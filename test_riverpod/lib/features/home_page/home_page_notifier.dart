import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_page_sate.dart';

class CounterNotifier extends StateNotifier<HomePageState> {
  CounterNotifier() : super(_initialValue);

  static const _initialValue = HomePageState(age: 0, name: '');
  void addt(String name, int age) {
    state = HomePageState(age: age, name: name);
  }
}
