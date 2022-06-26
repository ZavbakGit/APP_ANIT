import 'package:app_anit/pages/connected_config_river/connected_config_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/injection_container.dart';
import '../../domain/models/app_model.dart';
import '../../domain/models/catalog_model.dart';

class ConnectedConfigPage extends ConsumerWidget {
  const ConnectedConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final app = ref.watch(appStateProvider);
    final user = sl<AppModel>().curentUser?.name ?? 'Пусто';

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Config')),
          Text(user),
          BodyConnectedConfig(),
          ElevatedButton(
            onPressed: () {
              context.go("/");
            },
            child: const Text('Go'),
          ),
          ElevatedButton(
            onPressed: () {
              sl<AppModel>().curentUser = CatalogModel(
                kind: 'Пользователи',
                code: '446',
                name: 'Гладких Александр',
              );
            },
            child: const Text('Вход'),
          ),
          ElevatedButton(
            onPressed: () {
              sl<AppModel>().curentUser = null;
            },
            child: const Text('Выйти'),
          ),
        ],
      ),
    );
  }
}

class BodyConnectedConfig extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(connectedConfigStateProvider);
    //ref.read(connectedConfigStateProvider.notifier).loadConfig();

    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Center(
      child: Text(viewModel.toString()),
    );
  }
}
