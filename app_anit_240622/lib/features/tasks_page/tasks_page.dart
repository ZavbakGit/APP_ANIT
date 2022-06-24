import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TasksPage extends ConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Tasks')),
          const SizedBox(height: 24),
          ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
