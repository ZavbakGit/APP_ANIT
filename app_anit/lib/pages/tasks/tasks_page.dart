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
          const Center(child: Text('Tasks')),
          ElevatedButton(
            onPressed: () {
              context.go("/login");
            },
            child: const Text('Настройки'),
          ),
          ElevatedButton(
            onPressed: () {
              app.curentUser = null;
            },
            child: const Text('Выйти'),
          )
        ],
      ),
    );
  }
}
