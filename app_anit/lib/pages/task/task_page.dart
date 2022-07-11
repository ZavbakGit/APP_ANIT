import 'package:app_anit/core/presentation/widgets/app_bar.dart';
import 'package:app_anit/core/presentation/widgets/text_widget.dart';
import 'package:app_anit/pages/task/task_cubit.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../app/injection_container.dart';
import '../../core/presentation/widgets/page_widget.dart';
import '../../core/presentation/widgets/text_field.dart';
import '../../core/presentation/widgets/enum/ref_enum_field_widget.dart';
import '../search_dialog/search_dialog_page.dart';

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

          if (state.error != null) {
            return Scaffold(
              body: Center(
                child: CustomErrorText(
                  text: state.error,
                ),
              ),
            );
          }

          final title =
              '${state.isModified ? '*' : ''}${state.task!.$number} от ${DateFormat('dd.MM.yy HH:mm').format(state.task!.date!)}';

          final popupMenuButton = PopupMenuButton(
            icon: const Icon(Icons.check),
            itemBuilder: (context) => [],
          );

          final appBar = CustomAppBar(title: title, actions: [
            if (state.isModified) popupMenuButton,
          ]);

          return Scaffold(
            appBar: appBar,
            //TODO надо додумать с подложкой CustomPageWidget
            body: CustomPageWidget(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey[100],
                        child: CustomEditTextField(
                          title: 'Описание',
                          controller: TextEditingController(
                            text: state.task?.title ?? '',
                          ),
                          onChanged: (value) {
                            context.read<TaskCubit>().changeTitle(value);
                          },
                        ),
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
                        },
                        child: Card(
                          child: CustomCatalogField(
                            title: 'Клиент',
                            name: state.task?.partner?.name ?? '',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          Navigator.push<RefCatalog>(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SearchCatalogDialogPage(type: 'Пользователи'),
                            ),
                          ).then((value) {
                            if (value != null) {
                              context
                                  .read<TaskCubit>()
                                  .changeResponsible(value);
                            }
                          });
                        },
                        child: Card(
                          child: CustomCatalogField(
                            title: 'Ответственный',
                            name: state.task?.responsible?.name ?? '',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          Navigator.push<RefCatalog>(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SearchCatalogDialogPage(type: 'Пользователи'),
                            ),
                          ).then((value) {
                            if (value != null) {
                              context.read<TaskCubit>().changeProducer(value);
                            }
                          });
                        },
                        child: Card(
                          child: CustomCatalogField(
                            title: 'Постановщик',
                            name: state.task?.producer?.name ?? '',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              color: Colors.blue[100],
                              child: RefEnumFieldWidget(
                                title: 'Состояние',
                                refEnum: state.task!.condition!,
                                onChoice: (condition) {
                                  context
                                      .read<TaskCubit>()
                                      .changeCondition(condition);
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: RefEnumFieldWidget(
                                title: 'Важность',
                                refEnum: state.task!.importance!,
                                onChoice: (importance) {
                                  context
                                      .read<TaskCubit>()
                                      .changeImportance(importance);
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
