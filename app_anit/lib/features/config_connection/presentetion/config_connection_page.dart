import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../core/bloc/state_bloc_command.dart';
import '../../../core/presentation/button_widgets.dart';
import '../../../core/presentation/message_dialog.dart';
import '../../../core/presentation/page_widget.dart';
import '../../../core/presentation/progres_widget.dart';
import '../../../core/presentation/text_widget.dart';
import '../bloc/config_connection_bloc.dart';
import 'package:go_router/go_router.dart';

class ConfigConnectionPage extends StatelessWidget {
  const ConfigConnectionPage({Key? key}) : super(key: key);

  void _listnerBloc(BuildContext context, ConfigConnectionBlocState state) {
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
      create: (context) => sl<ConfigConnectionBloc>()..add(StartEvent()),
      child: BlocConsumer<ConfigConnectionBloc, ConfigConnectionBlocState>(
        listener: _listnerBloc,
        buildWhen: (context, state) {
          return state is! StateIsCommand;
        },
        builder: (context, sate) {
          return CustomPageWidget(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Expanded(
                    flex: 0,
                    child: CustomTitleText(
                      text: 'Настройка',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: _getBody(sate),
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

Widget _getBody(ConfigConnectionBlocState state) {
  if (state is LoadingState) {
    return const CustomBaseProgressIndicator();
  } else if (state is PendingState) {
    return ConfigFormWidget(
      baseUrl: state.baseUrl,
      login: state.login,
      password: state.password,
    );
  } else {
    return const Center(
        child: CustomMessageErrorText(text: 'Неизвестное состояние!'));
  }
}

class ConfigFormWidget extends StatefulWidget {
  final String? baseUrl;
  final String? login;
  final String? password;

  const ConfigFormWidget({
    Key? key,
    this.baseUrl,
    this.login,
    this.password,
  }) : super(key: key);

  @override
  State<ConfigFormWidget> createState() => _ConfigFormWidgetState();
}

class _ConfigFormWidgetState extends State<ConfigFormWidget> {
  final _formKey = GlobalKey<FormState>();

  final baseUrlController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    baseUrlController.text = widget.baseUrl ?? '';
    loginController.text = widget.login ?? '';
    passwordController.text = widget.baseUrl ?? '';

    void _submit() {
      if (_formKey.currentState!.validate()) {
        BlocProvider.of<ConfigConnectionBloc>(context).add(SaveEvent(
          baseUrl: baseUrlController.text,
          login: loginController.text,
          password: passwordController.text,
        ));
      }
    }

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 48),
                TextFormField(
                  controller: baseUrlController,
                  decoration: const InputDecoration(
                    labelText: 'Сервис (http://192.168.2.38/dostavka/hs/oas)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста введите адрес сервиса';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: loginController,
                  decoration: const InputDecoration(
                    labelText: 'Логин',
                    //border: OutlineInputBorder(),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.login),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста введите логин';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.lock),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста введите пароль';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                CustomPrimaryButton(text: 'Сохранить', onPressed: _submit),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
