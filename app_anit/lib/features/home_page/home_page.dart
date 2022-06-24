import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Home Page')),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              context.goNamed('tasks');
            },
            child: const Text('Go Tasks'),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              context.goNamed('config_cahnge');
            },
            child: const Text('Go Config'),
          ),
        ],
      ),
    );
  }
}
