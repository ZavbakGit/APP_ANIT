import 'package:app_anit/core/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../app/injection_container.dart';
import '../../core/presentation/widgets/catalogs/ref_catalog_field_widget.dart';
import '../../core/presentation/widgets/enums/ref_enum_field_widget.dart';
import '../../core/presentation/widgets/page_widget.dart';
import '../../core/presentation/widgets/progres_widget.dart';
import '../../core/presentation/widgets/text_field.dart';
import '../../core/presentation/widgets/text_widget.dart';
import '../task/task_cubit.dart';

class TaskPage extends StatelessWidget {
  final String guid;
  const TaskPage({
    Key? key,
    required this.guid,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(repository: sl(), guid: guid)..init(),
      child: const BodyWidget(),
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
              body: Center(child: CustomErrorText(text: state.error)));
        }
        // Чтобы курсор не убегал меняем если разница
        if (textController.text != (state.task?.title ?? '')) {
          textController.text = state.task?.title ?? '';
        }

        final title =
            '${state.isModified ? '*' : ''}${state.task!.$number} от ${DateFormat('dd.MM.yy HH:mm').format(state.task!.date!)}';

        final appBar = CustomAppBar(
          title: Text(title),
          actions: [
            if (state.isModified)
              IconButton(
                onPressed: () {
                  context.read<TaskCubit>().save();
                },
                icon: const Icon(Icons.check),
              ),
          ],
        );

        return WillPopScope(
          onWillPop: () async {
            if (!state.isModified) {
              return true;
            }

            _showAlertDialog(context);

            return false;
          },
          child: Scaffold(
            appBar: appBar,
            body: CustomPageWidget(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: CustomEditTextField(
                        title: '',
                        controller: textController,
                        onChanged: (value) {
                          context.read<TaskCubit>().changeTitle(value);
                        },
                      ),
                    ),
                    RefCatalogFieldWidget(
                      refCatalog: state.task?.partner,
                      title: 'Клиент',
                      type: 'Партнеры',
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
                      type: 'Пользователи',
                      onChoice: (val) {
                        context.read<TaskCubit>().changeResponsible(val);
                      },
                    ),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
