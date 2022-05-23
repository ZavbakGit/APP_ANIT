import 'package:flutter/material.dart';

import '../../../core/presentation/button_widgets.dart';
import '../../../core/presentation/page_widget.dart';
import '../../../core/presentation/text_widget.dart';

class ConfigConnectionPage extends StatelessWidget {
  const ConfigConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return PageWidget(
      child: Column(
        children: const [
          Expanded(
            flex: 0,
            child: TitleText(
              text: 'Настройка',
            ),
          ),
          Expanded(
            flex: 2,
            child: ConfigFormWidget(),
          ),
        ],
      ),
    );
  }
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
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Сервис (http://192.168.2.37/dostavka/hs/oas)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста введите адрес сервиса';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста введите логин';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста введите пароль';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
              PrimaryButton(text: 'Сохранить', onPressed: _submit),
            ],
          ),
        ),
      ),
    );
  }
}
