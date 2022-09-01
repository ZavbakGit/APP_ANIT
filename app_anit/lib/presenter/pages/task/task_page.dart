import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:app_anit/core/presentation/widgets_design/page_widget.dart';
import 'package:app_anit/domain/models/task_extention.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../../core/presentation/widgets_design/base_snackbar.dart';
import '../../../core/presentation/widgets_design/confirm_dialog.dart';
import '../../../core/presentation/widgets_design/empty_page.dart';
import '../../../core/presentation/widgets_design/error_page.dart';
import '../../../core/presentation/widgets_design/text_field.dart';
import '../../widgets/catalogs/ref_catalog_dialog_widget.dart';
import '../../widgets/catalogs/ref_catalog_field_widget.dart';
import '../../widgets/enums/ref_enum_field_widget.dart';

class TaskPage extends StatelessWidget {
  final String? guid;
  final bool? isAssignment;

  const TaskPage({
    Key? key,
    this.guid,
    this.isAssignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskPageBloc>(
        create: (context) => TaskPageBloc(
              appModel: sl(),
              repository: sl(),
              guid: guid,
              isAssignment: isAssignment,
            )..add(const TaskPageEventInit()),
        child: SrBlocBuilder<TaskPageBloc, TaskPageState, TaskPageSR>(
          onSR: _onSingleResult,
          builder: (context, blocState) => blocState.map(
            data: (state) => _PageContent(
              isModified: state.isModified,
              task: state.task,
              userIsController: state.userIsController,
            ),
            empty: (state) => const CustomEmptyPage(),
            error: (state) => ErrorPage(
              message: state.message,
              onClick: () =>
                  context.read<TaskPageBloc>().add(const TaskPageEvent.load()),
            ),
          ),
        ));
  }

  void _onSingleResult(BuildContext context, TaskPageSR sr) {
    sr.when(
        showSnackBar: (message) =>
            BaseSnackbar.show(context: context, text: message),
        exit: (isModified) {
          Navigator.of(context).pop(isModified);
        },
        openSaveDialog: () {},
        chooseAnResponsible: () {
          Navigator.push<RefCatalog>(
            context,
            MaterialPageRoute(
              builder: (context) => RefCatalogDialogWidget(
                type: 'Пользователи',
                titleDialog: 'Ответственный',
              ),
            ),
          ).then((val) {
            if (val != null) {
              context
                  .read<TaskPageBloc>()
                  .add(TaskPageEvent.changeResponsible(val));
            }
          });
        },
        showSaveDialog: () => showConfirmDialog(
              context: context,
              confirmed: () => context
                  .read<TaskPageBloc>()
                  .add(const TaskPageEvent.confirmedSave()),
              notConfirmed: () => context
                  .read<TaskPageBloc>()
                  .add(const TaskPageEvent.notConfirmedSave()),
            ));
  }
}

final _textController = TextEditingController();

class _PageContent extends StatelessWidget {
  final Task task;
  final bool isModified;
  final bool userIsController;
  const _PageContent({
    Key? key,
    required this.task,
    required this.isModified,
    required this.userIsController,
  }) : super(key: key);

  String get title =>
      '${isModified ? '*' : ''}${task.$number} от ${DateFormat('dd.MM.yy HH:mm').format(task.date!)}';

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();

    if (_textController.text != (task.title)) {
      _textController.text = task.title ?? '';
    }

    return WillPopScope(
      onWillPop: () async {
        context.read<TaskPageBloc>().add(const TaskPageEvent.presBack());
        return false;
      },
      child: Listener(
        onPointerDown: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(title: Text(title), actions: [
            if (isModified &&
                task.partner != null &&
                task.responsible != null &&
                task.title!.isNotEmpty)
              IconButton(
                onPressed: () {
                  context
                      .read<TaskPageBloc>()
                      .add(const TaskPageEvent.pressedSave());
                },
                icon: const Icon(Icons.check),
              ),
          ]),
          body: CustomPageWidget(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomEditTextField(
                      focusNode: focusNode,
                      title: 'Описание',
                      errorText:
                          _textController.text.isEmpty ? 'Не заполнено' : null,
                      controller: _textController,
                      onChanged: (value) {
                        context
                            .read<TaskPageBloc>()
                            .add(TaskPageEvent.changeTitle(value));
                      },
                    ),
                    const Divider(),
                    RefCatalogFieldWidget(
                      refCatalog: task.partner,
                      title: 'Клиент',
                      type: 'Партнеры',
                      errorTitle: task.partner == null ? 'Не заполнено' : null,
                      onChoice: (val) {
                        context
                            .read<TaskPageBloc>()
                            .add(TaskPageEvent.changePartner(val));
                      },
                    ),
                    RefCatalogFieldWidget(
                      refCatalog: task.responsible,
                      title: 'Ответственный',
                      errorTitle:
                          task.responsible == null ? 'Не заполнено' : null,
                      type: 'Пользователи',
                      onChoice: (val) {
                        context
                            .read<TaskPageBloc>()
                            .add(TaskPageEvent.changeResponsible(val));
                      },
                    ),
                    RefCatalogFieldWidget(
                      refCatalog: task.producer,
                      title: 'Постановщик',
                      type: 'Пользователи',
                      onChoice: (val) {
                        context
                            .read<TaskPageBloc>()
                            .add(TaskPageEvent.changeProducer(val));
                      },
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: RefEnumFieldWidget(
                            title: 'Состояние',
                            refEnum: task.condition!,
                            type: 'АН_СостоянияСобытия',
                            titleDialog: 'Состояние',
                            onChoice: (val) {
                              context
                                  .read<TaskPageBloc>()
                                  .add(TaskPageEvent.changeCondition(val));
                            },
                          ),
                        ),
                        Expanded(
                          child: RefEnumFieldWidget(
                            title: 'Важность',
                            refEnum: task.importance!,
                            type: 'ВариантыВажностиЗадачи',
                            titleDialog: 'Важность',
                            onChoice: (val) {
                              context
                                  .read<TaskPageBloc>()
                                  .add(TaskPageEvent.changeImportance(val));
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        PannelChippWraperWidget(
                          list: task.controllers ?? [],
                          title: 'Контролеры',
                          onAdd: (catalog) => context
                              .read<TaskPageBloc>()
                              .add(TaskPageEvent.addController(catalog)),
                        ),
                        SetControlWidget(
                          dateControl: task.dateControl,
                          needShowControlCheck: task.needShowControlCheck,
                          setControl: () => context
                              .read<TaskPageBloc>()
                              .add(const TaskPageEvent.setControl()),
                          setControlDone: () => context
                              .read<TaskPageBloc>()
                              .add(const TaskPageEvent.setControlDone()),
                          userIsController: userIsController,
                        ),
                      ],
                    ),
                    ChippWraperWidget(
                      list: task.controllers ?? [],
                      onDell: (catalog) => context
                          .read<TaskPageBloc>()
                          .add(TaskPageEvent.dellController(catalog)),
                    ),
                    const Divider(),
                    PannelChippWraperWidget(
                      list: task.assistants ?? [],
                      title: 'Соисполнители',
                      onAdd: (catalog) => context
                          .read<TaskPageBloc>()
                          .add(TaskPageEvent.addAssitant(catalog)),
                    ),
                    ChippWraperWidget(
                      list: task.assistants ?? [],
                      onDell: (catalog) => context
                          .read<TaskPageBloc>()
                          .add(TaskPageEvent.dellAssistant(catalog)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PannelChippWraperWidget extends StatelessWidget {
  final String title;
  final void Function(RefCatalog catalog) onAdd;
  final List<RefCatalog> list;
  const PannelChippWraperWidget({
    Key? key,
    required this.title,
    required this.onAdd,
    required this.list,
  }) : super(key: key);

  String get count => list.isNotEmpty ? '(${list.length})' : '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title $count'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.push<RefCatalog>(
              context,
              MaterialPageRoute(
                builder: (context) => RefCatalogDialogWidget(
                  type: 'Пользователи',
                  titleDialog: 'Пользователи',
                ),
              ),
            ).then((value) {
              if (value != null) {
                onAdd(value);
              }
            });
          },
        ),
      ],
    );
  }
}

class ChippWraperWidget extends StatelessWidget {
  final List<RefCatalog> list;
  final void Function(RefCatalog catalog) onDell;

  const ChippWraperWidget({
    Key? key,
    required this.list,
    required this.onDell,
  }) : super(key: key);

  String get count => list.isNotEmpty ? '(${list.length})' : '';

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...list
            .map(
              (controller) => Chip(
                avatar: const CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
                label: Text(controller.name!),
                deleteIcon: const Icon(Icons.close),
                onDeleted: () {
                  onDell(controller);
                },
              ),
            )
            .toList(),
      ],
    );
  }
}

class SetControlWidget extends StatelessWidget {
  final bool needShowControlCheck;
  final bool userIsController;
  final DateTime? dateControl;
  final void Function() setControl;
  final void Function() setControlDone;

  const SetControlWidget({
    Key? key,
    required this.needShowControlCheck,
    required this.userIsController,
    required this.dateControl,
    required this.setControl,
    required this.setControlDone,
  }) : super(key: key);

  bool get needShowDate {
    if (dateControl == null) return false;
    return !dateControl!.isEmptyDate;
  }

  @override
  Widget build(BuildContext context) {
    if (needShowControlCheck) {
      return IconButton(
        icon: const Icon(Icons.check),
        onPressed: userIsController ? setControlDone : null,
      );
    } else {
      return Row(
        children: [
          if (needShowDate) Text(dateControl!.getStrDateTime()),
          if (needShowDate)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: userIsController ? setControl : null,
            )
        ],
      );
    }
  }
}
