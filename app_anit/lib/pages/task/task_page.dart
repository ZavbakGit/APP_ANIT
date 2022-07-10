import 'package:app_anit/pages/task/task_cubit.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../app/injection_container.dart';
import '../../core/presentation/widgets/page_widget.dart';
import '../../core/presentation/widgets/text_field.dart';
import '../../core/presentation/extention_enum.dart';
import '../search_dialog/search_dialog_page.dart';
import 'package:go_router/go_router.dart';

class TaskPage extends StatelessWidget {
  final String guid;
  const TaskPage({
    Key? key,
    required this.guid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = TaskCubit(repository: sl(), guid: guid)..init();

    return BlocProvider(
      create: (context) => cubit,
      child: const CustomPageWidget(
        child: TaskBodyWidget(),
      ),
    );
  }
}

class TaskBodyWidget extends StatelessWidget {
  const TaskBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskPageState>(
        listener: (context, state) {},
        buildWhen: (previous, current) {
          return true;
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Scaffold(
              body: Center(
                child: CustomScrollView(),
              ),
            );
          }

          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomCatalogField(
                            title: 'Дата',
                            name: DateFormat('dd.MM.yy HH:mm')
                                .format(state.task!.date!),
                          ),
                        ),
                        Expanded(
                          child: CustomCatalogField(
                            title: 'Номер',
                            name: state.task?.$number ?? '',
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomCatalogField(
                            title: 'Состояние',
                            name: state.task?.condition?.description ?? '',
                          ),
                        ),
                        Expanded(
                          child: CustomCatalogField(
                            title: 'Важность',
                            name: state.task?.importance?.description ?? '',
                          ),
                        )
                      ],
                    ),
                    CustomEditTextField(
                      title: 'Описание',
                      controller:
                          TextEditingController(text: state.task?.title ?? ''),
                    ),
                    InkWell(
                      onTap: () async {
                        Navigator.push<RefCatalog>(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SearchCatalogDialogPage(type: 'Партнеры'),
                          ),
                        ).then((value) {
                          if (value != null) {
                            context.read<TaskCubit>().changePartner(value);
                          }
                        });

                        // await showDialogCustom(context, 'Партнеры')
                        //     .then((value) {
                        //   if (value is RefCatalog) {
                        //     context.read<TaskCubit>().changePartner(value);
                        //   }
                        //   return null;
                        // });
                      },
                      child: CustomCatalogField(
                        title: 'Клиент',
                        name: state.task?.partner?.name ?? '',
                      ),
                    ),
                    InkWell(
                      onTap: () => showDialogCustom(context, 'Пользователи'),
                      child: CustomCatalogField(
                        title: 'Ответственный',
                        name: state.task?.responsible?.name ?? '',
                      ),
                    ),
                    InkWell(
                      onTap: () => showDialogCustom(context, 'Пользователи'),
                      child: CustomCatalogField(
                        title: 'Постановщик',
                        name: state.task?.producer?.name ?? '',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future<Object?> showDialogCustom(BuildContext context, String typeCatalog) {
    return showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: SearchCatalogDialogPage(
              type: typeCatalog,
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
      barrierDismissible: true,
      barrierLabel: 'wefdewfe',
      context: context,
      pageBuilder: (context, animation1, animation2) {
        return Container();
      },
    );
  }
}
