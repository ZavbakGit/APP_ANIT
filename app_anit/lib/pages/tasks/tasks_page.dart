import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/injection_container.dart';
import '../../domain/models/app_model.dart';

class TasksPage extends ConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final app = sl<AppModel>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Tasks ${app.remoteConfig.toString()}')),
          ElevatedButton(
            onPressed: () {
              context.go("/login");
            },
            child: const Text('Настройки'),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {
              app.logout();
            },
            child: const Text('Выйти'),
          )
        ],
      ),
    );
  }
}
