import 'package:app_anit/core/presentation/page_widget.dart';
import 'package:app_anit/core/presentation/text_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/presentation/button_widgets.dart';
import '../bloc/test_connection_bloc.dart';
import 'package:go_router/go_router.dart';

class TestConnectionPage extends StatelessWidget {
  const TestConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = TestConnectionState(isLoading: false, message: '');

    if (state is TestConnectionState) {
      if (state.isLoading) {
        return const Center(child: CircularProgressIndicator());
      } else {
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
                  Center(child: CustomMessageErrorText(text: state.message)),
                  const SizedBox(height: 24),
                  CustomPrimaryButton(onPressed: () {}, text: '  Вход  '),
                  const SizedBox(height: 16),
                  CustomSecondaryButton(
                      onPressed: () {
                        context.goNamed('config_connection');
                      },
                      text: 'Настройка'),
                ],
              ),
            ),
          ),
        );
      }
    } else {
      return const Center(
        child: CustomMessageErrorText(text: 'Неизвестное состояние!'),
      );
    }
  }
}
