import 'package:flutter/material.dart';

import '../../../core/presentation/widgets_design/base_snackbar.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../../core/presentation/widgets_design/progres_widget.dart';
import '../../../core/presentation/widgets_design/text_field.dart';
import '../../disign_system/saherd/ui_helpers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomPageWidget(
        child: FormWidget(isLoading: false),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
    required this.isLoading,
    this.errorMessage,
  }) : super(key: key);

  final bool isLoading;
  final String? errorMessage;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'is empty';
                }
                return null;
              },
              obscureText: true,
            ),
            verticalSpaceRegular,
            CustomTextFormWidget(
              labelText: 'Password',
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
              onPressed: widget.isLoading
                  ? null
                  : () {
                      BaseSnackbar.show(
                          context: context,
                          text: 'Неверно введен login или password');
                    },
              child: const Text('Login'),
            ),
            verticalSpaceRegular,
            if (widget.isLoading) const CustomCircularProgressIndicator(),
            if (widget.errorMessage != null)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.errorMessage!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Theme.of(context).errorColor),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
