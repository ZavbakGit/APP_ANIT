import 'package:app_anit/arch/sr_bloc/sr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../stream_listener.dart';

typedef SingleResultListener<SR> = void Function(
    BuildContext context, SR singleResult);

/// Виджет-прослойка над bloc-builder для работы с SrBloc
class SrBlocBuilder<B extends SrBloc<Object?, S, SR>, S, SR>
    extends StatelessWidget {
  final B? bloc;
  final SingleResultListener<SR> onSR;
  final BlocWidgetBuilder<S> builder;
  final BlocBuilderCondition<S>? buildWhen;

  const SrBlocBuilder({
    required this.onSR,
    required this.builder,
    this.bloc,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamListener<SR>(
      stream: (bloc ?? context.read<B>()).singleResults,
      onData: (data) => onSR(context, data),
      child: BlocBuilder(
        bloc: bloc,
        builder: builder,
        buildWhen: buildWhen,
      ),
    );
  }
}
