import 'package:app_anit/presenter/pages/login/login_page_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../../core/presentation/widgets_design/base_snackbar.dart';
import '../../../core/presentation/widgets_design/empty_page.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../../core/presentation/widgets_design/progres_widget.dart';
import '../../../core/presentation/widgets_design/text_field.dart';
import '../../disign_system/saherd/ui_helpers.dart';
import 'login_page_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
      create: (context) => LoginPageBloc(appModel: sl())..add(const EvInit()),
      child: SrBlocBuilder<LoginPageBloc, LoginPageState, LoginPageSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return state.map(
            data: (value) => FormWidget(
              isLoading: value.isLoading,
              login: value.login,
              password: value.password,
              submit: (login, password) => context
                  .read<LoginPageBloc>()
                  .add(EvLogin(login: login, password: password)),
            ),
            empty: (value) => const CustomEmptyPage(),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, LoginPageSR sr) {
    sr.when(
      exit: () => context.go('/'),
      showSnackBar: (message) =>
          BaseSnackbar.show(context: context, text: message),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
    required this.login,
    required this.password,
    required this.isLoading,
    required this.submit,
  }) : super(key: key);

  final String login;
  final String password;
  final bool isLoading;
  final void Function(String login, String password) submit;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      widget.submit(
        loginController.text,
        passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    loginController.text = widget.login;
    passwordController.text = widget.password;

    return Scaffold(
      body: CustomPageWidget(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpaceRegular,
                  Image.asset(
                    "assets/images/profile_pic.png",
                    width: 100,
                    height: 100,
                  ),
                  verticalSpaceRegular,
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  verticalSpaceLarge,
                  CustomTextFormWidget(
                    enabled: !widget.isLoading,
                    labelText: 'Login',
                    controller: loginController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'is empty';
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  verticalSpaceRegular,
                  CustomTextFormWidget(
                    labelText: 'Password',
                    controller: passwordController,
                    enabled: !widget.isLoading,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'is empty';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  verticalSpaceRegular,
                  ElevatedButton(
                    onPressed: widget.isLoading ? null : _submit,
                    child: const Text('Login'),
                  ),
                  verticalSpaceRegular,
                  if (widget.isLoading) const CustomCircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
