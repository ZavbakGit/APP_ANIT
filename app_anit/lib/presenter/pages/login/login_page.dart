import 'package:app_anit/app/injection_container.dart';
import 'package:app_anit/core/presentation/widgets_design/custom_error_messge.dart';
import 'package:app_anit/presenter/pages/login/login_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/presentation/widgets_design/button_widgets.dart';
import '../../../core/presentation/widgets_design/divider_widget.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../../core/presentation/widgets_design/progres_widget.dart';
import '../../../core/presentation/widgets_design/text_form_field.dart';
import '../../../core/presentation/widgets_design/text_widget.dart';

class LoginPage extends ConsumerWidget {
  final bool autoLogin;

  const LoginPage({
    Key? key,
    this.autoLogin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocProvider(
      create: (context) {
        return LoginScreenCubit(appModel: sl())..getConnectionConfig();
      },
      child: const Scaffold(
        body: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginScreenCubit, PageState>(
      listener: (context, state) {
        if (state.isGoHome) {
          context.go('/');
        }
      },
      buildWhen: (previous, current) {
        return !current.isGoHome;
      },
      builder: (context, state) {
        return CustomPageWidget(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LoginFormWidget(
              isLoading: state.isLoading,
              baseUrl: state.baseUrl,
              login: state.login,
              password: state.password,
              errorMessage: state.error,
              submit: (baseUrl, login, password) {
                BlocProvider.of<LoginScreenCubit>(context)
                    .login(baseUrl: baseUrl, login: login, password: password);
              },
            ),
          ),
        );
      },
    );
  }
}

class LoginFormWidget extends StatefulWidget {
  final String? baseUrl;
  final String? login;
  final String? password;
  final bool isLoading;
  final String? errorMessage;
  final void Function(String baseUrl, String login, String password) submit;

  const LoginFormWidget({
    Key? key,
    this.baseUrl,
    this.login,
    this.password,
    required this.isLoading,
    this.errorMessage,
    required this.submit,
  }) : super(key: key);

  @override
  State<LoginFormWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();

  final baseUrlController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      widget.submit(
        baseUrlController.text,
        loginController.text,
        passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    baseUrlController.text = widget.baseUrl ?? '';
    loginController.text = widget.login ?? '';
    passwordController.text = widget.password ?? '';

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomHeadLinText(text: 'Войти'),
                const CustomDividerHeader(),
                CustomTextFormWidget(
                  enabled: !widget.isLoading,
                  controller: loginController,
                  labelText: 'Логин',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Не заполнено';
                    }
                    return null;
                  },
                ),
                const CustomDividerField(),
                CustomTextFormWidget(
                  enabled: !widget.isLoading,
                  controller: passwordController,
                  labelText: 'Пароль',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Не заполнено';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                const CustomDividerField(),
                CustomPrimaryButton(
                    onPressed: widget.isLoading ? null : _submit,
                    text: 'Login'),
                const CustomDividerField(),
                if (widget.isLoading) const CustomCircularProgressIndicator(),
                if (widget.errorMessage != null)
                  CustomErrorWidget(text: widget.errorMessage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
