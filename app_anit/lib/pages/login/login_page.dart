import 'package:app_anit/app/injection_container.dart';
import 'package:app_anit/pages/login/login_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        if (autoLogin) {
          return LoginScreenCubit(appModel: sl(), repository: sl())
            ..autoLogin();
        }

        return LoginScreenCubit(appModel: sl(), repository: sl())..load();
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
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(state.toString())),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<LoginScreenCubit>(context).login();
                  },
                  child: const Text('Login')),
            ],
          );
        }
      },
    );
  }
}
