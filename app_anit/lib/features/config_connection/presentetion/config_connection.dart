import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../core/bloc/state_bloc_command.dart';
import '../../../core/presentation/button_widgets.dart';
import '../../../core/presentation/page_widget.dart';
import '../../../core/presentation/progres_widget.dart';
import '../../../core/presentation/text_widget.dart';
import '../bloc/config_connection_bloc.dart';

class ConfigConnectionPage extends StatelessWidget {
  const ConfigConnectionPage({Key? key}) : super(key: key);

  void _listnerBloc(BuildContext context, ConfigConnectionState state) {}

  @override
  Widget build(Object context) {
    return BlocProvider(
      create: (context) => sl<ConfigConnectionCubit>()..getConfig(),
      child: BlocConsumer<ConfigConnectionCubit, ConfigConnectionState>(
        listener: _listnerBloc,
        buildWhen: (context, state) {
          return state is! StateIsCommand;
        },
        builder: (context, sate) {
          return PageWidget(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Expanded(
                    flex: 0,
                    child: TitleText(
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

Widget _getBody(ConfigConnectionState state) {
  if (state.status.isLoading) {
    return const BaseProgressIndicator();
  }

  return const Center(
    child: MessageErrorText(text: 'Неизвестное состояние!'),
  );
}

class ConfigFormWidget extends StatefulWidget {
  const ConfigFormWidget({Key? key}) : super(key: key);

  @override
  State<ConfigFormWidget> createState() => _ConfigFormWidgetState();
}

class _ConfigFormWidgetState extends State<ConfigFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void _submit() {
      if (_formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Data')),
        );
      }
    }

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              TextFormField(
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
                decoration: const InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(),
                  prefixIcon: Align(
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
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
            ],
          ),
        ),
      ),
    );
  }
}
