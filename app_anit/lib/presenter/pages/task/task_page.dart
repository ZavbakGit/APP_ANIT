import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:app_anit/core/presentation/widgets_design/app_bar.dart';
import 'package:app_anit/presenter/widgets/catalogs/ref_catalog_dialog_widget.dart';
import 'package:app_anit/presenter/widgets/catalogs/ref_catalog_field_widget.dart';
import 'package:app_anit/presenter/widgets/enums/ref_enum_field_widget.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../app/injection_container.dart';
import '../../../core/presentation/widgets_design/custom_error_widget.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../../core/presentation/widgets_design/progres_widget.dart';
import '../../../core/presentation/widgets_design/text_field.dart';
import '../task/task_cubit.dart';

class TaskPage extends StatelessWidget {
  final String? guid;
  const TaskPage({
    Key? key,
    this.guid,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TaskCubit(repository: sl(), guidTask: guid, appModel: sl())..init(),
      child: const CustomPageWidget(
        child: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return BlocConsumer<TaskCubit, TaskState>(
      listener: (context, state) {
        if (state.exit) {
          Navigator.of(context).pop(state.isModified);
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Scaffold(
              body: Center(child: CustomCircularProgressIndicator()));
        }

        if (state.error != null) {
          return Scaffold(
            body: Center(
              child: CustomErrorWidget(
                text: state.error,
              ),
            ),
          );
        }
        // Чтобы курсор не убегал меняем если разница
        if (textController.text != (state.task?.title ?? '')) {
          textController.text = state.task?.title ?? '';
        }

        final title =
            '${state.isModified ? '*' : ''}${state.task!.$number} от ${DateFormat('dd.MM.yy HH:mm').format(state.task!.date!)}';

        return WillPopScope(
          onWillPop: () async {
            if (!state.isModified ||
                state.task!.partner == null ||
                state.task!.responsible == null ||
                state.task!.title!.isEmpty) {
              return true;
            }

            _showAlertDialog(context);

            return false;
          },
          child: Listener(
            onPointerDown: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              appBar: getAppBar(title, state, context),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomEditTextField(
                      title: 'Описание',
                      errorText:
                          textController.text.isEmpty ? 'Не заполнено' : null,
                      controller: textController,
                      onChanged: (value) {
                        context.read<TaskCubit>().changeTitle(value);
                      },
                    ),
                    const Divider(
                      height: 24,
                      color: Colors.grey,
                      indent: 16,
                      endIndent: 16,
                    ),
                    RefCatalogFieldWidget(
                      refCatalog: state.task?.partner,
                      title: 'Клиент',
                      type: 'Партнеры',
                      errorTitle:
                          state.task?.partner == null ? 'Не заполнено' : null,
                      onChoice: (val) {
                        context.read<TaskCubit>().changePartner(val);
                      },
                    ),
                    RefCatalogFieldWidget(
                      refCatalog: state.task?.producer,
                      title: 'Постановщик',
                      type: 'Пользователи',
                      onChoice: (val) {
                        context.read<TaskCubit>().changeProducer(val);
                      },
                    ),
                    RefCatalogFieldWidget(
                      refCatalog: state.task?.responsible,
                      title: 'Ответственный',
                      errorTitle: state.task?.responsible == null
                          ? 'Не заполнено'
                          : null,
                      type: 'Пользователи',
                      onChoice: (val) {
                        context.read<TaskCubit>().changeResponsible(val);
                      },
                    ),
                    const Divider(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: RefEnumFieldWidget(
                            title: 'Состояние',
                            refEnum: state.task?.condition!,
                            type: 'АН_СостоянияСобытия',
                            titleDialog: 'Состояние',
                            onChoice: (val) {
                              context.read<TaskCubit>().changeCondition(val);
                            },
                          ),
                        ),
                        Expanded(
                          child: RefEnumFieldWidget(
                            title: 'Важность',
                            refEnum: state.task?.importance!,
                            type: 'ВариантыВажностиЗадачи',
                            titleDialog: 'Важность',
                            onChoice: (val) {
                              context.read<TaskCubit>().changeImportance(val);
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 8),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ControllersWidget(
                          state: state,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: AssistantsWidget(
                          state: state,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  CustomAppBar getAppBar(String title, TaskState state, BuildContext context) {
    return CustomAppBar(
      title: Text(title),
      actions: [
        if (state.isModified &&
            state.task!.partner != null &&
            state.task!.responsible != null &&
            state.task!.title!.isNotEmpty)
          IconButton(
            onPressed: () {
              context.read<TaskCubit>().save();
            },
            icon: const Icon(Icons.check),
          ),
      ],
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Внимание"),
          content: const Text("Задача изменена. Сохранить?"),
          actions: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Cancel'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('ОК'),
            ),
          ],
        );
      },
    ).then((value) {
      if (value != null) {
        if (value) {
          context.read<TaskCubit>().save();
        } else {
          context.read<TaskCubit>().exit();
        }
      }
    });
  }
}

class AssistantsWidget extends StatelessWidget {
  final TaskState state;

  const AssistantsWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = state.task!.assistants;
    final title = list!.isNotEmpty ? '(${list.length})' : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Соисполнители $title'),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push<RefCatalog>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RefCatalogDialogWidget(
                      type: 'Пользователи',
                      titleDialog: 'Соисполнитель',
                    ),
                  ),
                ).then((value) {
                  if (value != null) {
                    context.read<TaskCubit>().addAssitant(value);
                  }
                });
              },
            ),
          ],
        ),
        const Divider(height: 8),
        Wrap(
          spacing: 8,
          children: [
            ...state.task!.assistants!
                .map(
                  (assistant) => Chip(
                    backgroundColor: Colors.amber[50],
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.account_circle),
                    ),
                    label: SizedBox(
                      width: 80,
                      child: Text(
                        assistant.name!,
                      ),
                    ),
                    elevation: 2,
                    shadowColor: Colors.deepOrange,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {
                      context.read<TaskCubit>().dellAssistant(assistant.guid!);
                    },
                  ),
                )
                .toList(),
          ],
        ),
      ],
    );
  }
}

class ControllersWidget extends StatelessWidget {
  final TaskState state;

  const ControllersWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = state.task!.controllers;
    final title = list!.isNotEmpty ? '(${list.length})' : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Контролеры $title'),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push<RefCatalog>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RefCatalogDialogWidget(
                      type: 'Пользователи',
                      titleDialog: 'Контролер',
                    ),
                  ),
                ).then((value) {
                  if (value != null) {
                    context.read<TaskCubit>().addController(value);
                  }
                });
              },
            ),
            ControllersPanelWidget(
              state: state,
            ),
          ],
        ),
        const Divider(height: 8),
        Wrap(
          children: [
            ...state.task!.controllers!
                .map(
                  (controller) => Chip(
                    backgroundColor: Colors.amber[50],
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.account_circle),
                    ),
                    label: SizedBox(
                      width: 80,
                      child: Text(controller.name!),
                    ),
                    elevation: 2,
                    shadowColor: Colors.deepOrange,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {
                      context
                          .read<TaskCubit>()
                          .dellController(controller.guid!);
                    },
                  ),
                )
                .toList(),
          ],
        ),
      ],
    );
  }
}

class ControllersPanelWidget extends StatelessWidget {
  final TaskState state;
  const ControllersPanelWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!state.isControlDone) {
      return IconButton(
        icon: const Icon(Icons.check),
        onPressed: () {
          context.read<TaskCubit>().setControlDone();
        },
      );
    } else {
      return Row(
        children: [
          Text(state.task!.dateControl!.getStrDateTime()),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.read<TaskCubit>().setControl();
            },
          )
        ],
      );
    }
  }
}
