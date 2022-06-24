import 'package:app_anit/features/config_page/config_page_state.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class ConfigPage extends ConsumerWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ConfigPageModel state = ref.watch(configPageStateProvider);

    ref.listen<ConfigPageModel>(configPageStateProvider, (previous, next) {
      if (next.conddition == Condition.success) {
        context.go('/');
      }
    });

    switch (state.conddition) {
      case Condition.loading:
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      case Condition.success:
        return const Scaffold(
          body: Center(
            child: Text('Success'),
          ),
        );
      case Condition.data:
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('login: ${state.configData?.login ?? ''}')),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ref.read(configPageStateProvider.notifier).save();
                },
                child: const Text('Save'),
              ),
            ],
          ),
        );
      case Condition.error:
        return const Scaffold(
          body: Center(
            child: Text('Error'),
          ),
        );
    }
  }
}
