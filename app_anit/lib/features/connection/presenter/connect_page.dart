import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/injection_container.dart';
import '../../../core/presentation/button_widgets.dart';
import '../../../core/presentation/page_widget.dart';
import '../../../core/presentation/progres_widget.dart';
import '../../../core/presentation/text_widget.dart';
import '../bloc/connection_bloc.dart';

class ConnectionPage extends StatelessWidget {
  final bool isStart;

  const ConnectionPage({
    Key? key,
    this.isStart = false,
  }) : super(key: key);

  @override
  Widget build(Object context) {
    return CustomPageWidget(
      child: BlocProvider(
        create: (context) =>
            sl<ConnectionBloc>()..add(InitEvent(isAutoStart: isStart)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Column(
                  children: const [
                    CustomTitleText(text: 'Соеденение'),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: BlocConsumer<ConnectionBloc, ConnectionXState>(
                  listener: (context, state) {
                    if (state.status == ConnectionStatus.success) {
                      context.pop();
                    }
                  },
                  builder: (context, state) {
                    switch (state.status) {
                      case ConnectionStatus.loading:
                        return const CustomBaseProgressIndicator();
                      default:
                        return _ConectionContent(
                          state: state,
                        );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ConectionContent extends StatelessWidget {
  final ConnectionXState state;

  const _ConectionContent({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 48),
            child: Center(
              child: CustomMessageErrorText(
                text: state.errorMessage,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 84),
            child: CustomPrimaryButton(
              onPressed: () {
                BlocProvider.of<ConnectionBloc>(context).add(ConnectEvent());
              },
              text: 'Вход',
            )),
        const SizedBox(height: 8),
        CustomSecondaryButton(
          onPressed: () {
            context.goNamed('config_connection');
          },
          text: 'Настройка',
        ),
      ],
    );
  }
}
