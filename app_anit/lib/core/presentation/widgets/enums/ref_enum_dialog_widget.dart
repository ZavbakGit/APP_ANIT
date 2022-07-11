import 'package:app_anit/core/presentation/widgets/progres_widget.dart';
import 'package:app_anit/core/presentation/widgets/text_widget.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../domain/repositories/repository.dart';

class RefEnumDialogWidget extends StatelessWidget {
  final RefEnum refEnum;
  final String titleDialog;

  const RefEnumDialogWidget({
    Key? key,
    required this.refEnum,
    required this.titleDialog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RefEnumDialogCubit(refEnum: refEnum, repository: sl())..refreshData(),
      child: BlocBuilder<RefEnumDialogCubit, StateDialog>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CustomCircularProgressIndicator();
          }

          if (state.error != null) {
            return Center(
              child: CustomErrorText(text: state.error),
            );
          }

          final list = state.list!
              .map(
                (it) => RadioListTile<int>(
                  groupValue: refEnum.index,
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
            children: list,
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
  final RefEnum refEnum;

  RefEnumDialogCubit({
    required this.repository,
    required this.refEnum,
  }) : super(StateDialog(isLoading: true));

  refreshData() async {
    emit(StateDialog(isLoading: true));
    final either = await repository.getEnumElemets(type: refEnum.type!);

    either.fold((fail) {
      emit(StateDialog(error: 'Ошибка'));
    }, (result) {
      emit(StateDialog(list: result));
    });
  }
}
