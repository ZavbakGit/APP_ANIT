import 'package:app_anit/core/presentation/page_widget.dart';
import 'package:app_anit/core/presentation/text_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/presentation/button_widgets.dart';
import '../bloc/test_connection_bloc.dart';

class TestConnectionPage extends StatelessWidget {
  const TestConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return CustomPageWidget(
        child: _body(TestConnectionState(isLoading: false, message: '')));
  }
}

Widget _body(TestConnectionBlocState state) {
  if (state is TestConnectionState) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                  child: CustomTitleText(
                text: 'Проверка соеденения',
              )),
              const SizedBox(
                height: 24,
              ),
              Center(child: CustomMessageErrorText(text: state.message)),
              const SizedBox(
                height: 24,
              ),
              CustomPrimaryButton(onPressed: () {}, text: 'Соеденение'),
              CustomSecondaryButton(onPressed: () {}, text: 'Настройка'),
            ],
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
