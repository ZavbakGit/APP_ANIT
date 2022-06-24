import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/app_model.dart';

class TasksPage extends ConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final app = ref.watch(appStateProvider);
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
              ref.read(appStateProvider.notifier).curentUser = null;
            },
            child: const Text('Выйти'),
          )
        ],
      ),
    );
  }
}
