import 'package:app_anit/core/presentation/page_widget.dart';
import 'package:app_anit/core/presentation/progres_widget.dart';
import 'package:app_anit/core/presentation/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/injection_container.dart';
import '../../../core/bloc/state_bloc_command.dart';
import '../../../core/presentation/button_widgets.dart';
import '../../../core/presentation/message_dialog.dart';
import '../bloc/test_connection_bloc.dart';

class TestConnectionPage extends StatelessWidget {
  const TestConnectionPage({Key? key}) : super(key: key);

  void _listnerBloc(BuildContext context, TestConnectionBlocState state) {
    if (state is ErrorState) {
      showCustomMessageDialog(
        context: context,
        message: state.message,
        title: 'Ошибка',
      );
    } else if (state is IsSavedState) {
      context.pop();
    }
  }

  @override
  Widget build(Object context) {
    return BlocProvider(
      create: (context) => sl<TestConnectionBloc>()..add(StartEvent()),
      child: BlocConsumer<TestConnectionBloc, TestConnectionBlocState>(
        listener: _listnerBloc,
        buildWhen: (context, state) {
          return state is! StateIsCommand;
        },
        builder: (context, state) {
          return CustomPageWidget(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Expanded(
                    flex: 0,
                    child: CustomTitleText(
                      text: 'Подключение',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: BodyWidget(state: state),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget _getBody(TestConnectionBlocState state) {
  if (state is LoadingState) {
    return const CustomBaseProgressIndicator();
  } else if (state is PendingState) {
    return CustomPageWidget(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                  child: CustomTitleText(
                text: 'Подключиться к базе',
              )),
              const SizedBox(height: 36),
              Center(child: CustomMessageErrorText(text: state.messageError)),
              const SizedBox(height: 24),
              CustomPrimaryButton(onPressed: () {}, text: '  Вход  '),
              const SizedBox(height: 16),
              CustomSecondaryButton(
                onPressed: () {
                  //context.goNamed('config_connection');ё
                },
                text: 'Настройка',
              ),
            ],
          ),
        ),
      ),
    );
  } else {
    return const Center(
        child: CustomMessageErrorText(text: 'Неизвестное состояние!'));
  }
}

class BodyWidget extends StatelessWidget {
  final TestConnectionBlocState state;

  const BodyWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state is LoadingState) {
      return const Center(
        child: CustomBaseProgressIndicator(),
      );
    } else if (state is PendingState) {
      return CustomPageWidget(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 36),
                Center(
                    child: CustomMessageErrorText(
                        text: (state as PendingState).messageError)),
                const SizedBox(height: 24),
                CustomPrimaryButton(onPressed: () {}, text: '  Вход  '),
                const SizedBox(height: 16),
                CustomSecondaryButton(
                  onPressed: () {
                    context.goNamed('config_connection');
                  },
                  text: 'Настройка',
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return const Center(
        child: CustomMessageErrorText(text: 'Неизвестное состояние!'),
      );
    }
  }
}
