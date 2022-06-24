import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/app_model.dart';
import '../../domain/models/catalog_model.dart';

class ConnectedConfigPage extends ConsumerWidget {
  const ConnectedConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final app = ref.watch(appStateProvider);
    final user = app.curentUser?.name ?? 'Пусто';

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Config')),
          Text(user),
          ElevatedButton(
            onPressed: () {
              context.go("/");
            },
            child: const Text('Go'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(appStateProvider.notifier).curentUser = CatalogModel(
                kind: 'Пользователи',
                code: '446',
                name: 'Гладких Александр',
              );
            },
            child: const Text('Вход'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(appStateProvider.notifier).curentUser = null;
            },
            child: const Text('Выйти'),
          ),
        ],
      ),
    );
  }
}
