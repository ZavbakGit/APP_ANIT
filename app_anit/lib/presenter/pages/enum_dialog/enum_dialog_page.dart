import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_empty_widget.dart';
import '../../disign_system/widgets_design/custom_error_widget.dart';
import 'enum_dialog_bloc.dart';
import 'enum_dialog_models.dart';

class EnumDialogPage extends StatelessWidget {
  const EnumDialogPage({
    Key? key,
    required this.type,
    this.refEnum,
  }) : super(key: key);

  final String type;
  final RefEnum? refEnum;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EnumDialogBloc>(
      create: (context) => EnumDialogBloc(repository: sl(), type: type)
        ..add(const EnumDialogEvent.init()),
      child: SrBlocBuilder<EnumDialogBloc, EnumDialogState, EnumDialogSR>(
        onSR: _onSingleResult,
        builder: (context, state) => state.map(
            data: (state) => _PageContent(list: state.list, refEnum: refEnum),
            empty: (state) => const CustomEmptyWidget(),
            error: (state) => CustomErrorWidget(
                  message: state.message,
                  onClick: () => context
                      .read<EnumDialogBloc>()
                      .add(const EnumDialogEvent.load()),
                )),
      ),
    );
  }

  void _onSingleResult(BuildContext context, EnumDialogSR sr) {
    sr.when(
      exit: (value) => Navigator.of(context).pop(value),
    );
  }
}

class _PageContent extends StatelessWidget {
  final List<RefEnum> list;
  final RefEnum? refEnum;

  const _PageContent({
    Key? key,
    this.refEnum,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radioList = list
        .map(
          (it) => RadioListTile<int>(
            groupValue: refEnum?.index,
            title: Text(it.name!),
            value: it.index!,
            onChanged: (val) {
              if (val != null) {
                final result = list.firstWhere(
                  (element) => element.index == val,
                );
                context
                    .read<EnumDialogBloc>()
                    .add(EnumDialogEvent.pressedItem(result));
              }
            },
          ),
        )
        .toList();

    return Column(
      children: [...radioList],
    );
  }
}
