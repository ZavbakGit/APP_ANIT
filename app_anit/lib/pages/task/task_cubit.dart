import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/app_model.dart';
import '../../domain/repositories/repository.dart';

class TaskCubit extends Cubit<TaskPageState> {
  final Repository repository;
  final AppModel appModel;
  TaskCubit({
    required this.repository,
    required this.appModel,
  }) : super(TaskPageState(title: 'Hi'));
}

class TaskPageState {
  final String title;
  TaskPageState({
    required this.title,
  });
}
