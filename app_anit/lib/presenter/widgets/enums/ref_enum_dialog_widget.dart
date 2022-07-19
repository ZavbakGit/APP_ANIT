import 'package:app_anit/core/presentation/widgets_design/progres_widget.dart';
import 'package:app_anit/core/presentation/widgets_design/text_widget.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../domain/repositories/repository.dart';
import '../../../core/presentation/widgets_design/custom_error_widget.dart';

class RefEnumDialogWidget extends StatelessWidget {
  final RefEnum? refEnum;
  final String? titleDialog;
  final String type;

  const RefEnumDialogWidget({
    Key? key,
    required this.refEnum,
    this.titleDialog,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RefEnumDialogCubit(refEnum: refEnum, repository: sl(), type: type)
            ..refreshData(),
      child: BlocBuilder<RefEnumDialogCubit, StateDialog>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CustomCircularProgressIndicator();
          }

          if (state.error != null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
                child: CustomErrorWidget(text: state.error),
              ),
            );
          }

          final list = state.list!
              .map(
                (it) => RadioListTile<int>(
                  groupValue: refEnum?.index,
                  title: Text(it.name!),
                  value: it.index!,
                  onChanged: (val) {
                    if (val != null) {
                      final result = state.list!.firstWhere(
                        (element) => element.index == val,
                      );
                      Navigator.of(context).pop(result);
                    }
                  },
                ),
              )
              .toList();

          return Column(
            children: [
              CustomHeadLinText(
                text: titleDialog,
              ),
              ...list
            ],
          );
        },
      ),
    );
  }
}

class StateDialog {
  final bool isLoading;
  final String? error;
  final List<RefEnum>? list;

  StateDialog({
    this.isLoading = false,
    this.error,
    this.list,
  });

  StateDialog copyWith({
    bool? isLoading,
    String? error,
    List<RefEnum>? list,
  }) {
    return StateDialog(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      list: list ?? this.list,
    );
  }

  @override
  String toString() =>
      'StateDialog(isLoading: $isLoading, error: $error, list: $list)';
}

class RefEnumDialogCubit extends Cubit<StateDialog> {
  final Repository repository;
  final RefEnum? refEnum;
  final String type;

  RefEnumDialogCubit({
    required this.repository,
    required this.refEnum,
    required this.type,
  }) : super(StateDialog(isLoading: true));

  refreshData() async {
    emit(StateDialog(isLoading: true));
    final either = await repository.getEnumElemets(type: type);

    either.fold((fail) {
      emit(StateDialog(error: fail.error));
    }, (result) {
      emit(StateDialog(list: result));
    });
  }
}
