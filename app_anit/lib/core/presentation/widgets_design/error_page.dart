import 'package:app_anit/core/presentation/widgets_design/page_widget.dart';
import 'package:app_anit/presenter/disign_system/saherd/ui_helpers.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    this.onClick,
    this.message,
    this.buttonTitle = 'Повторить',
  }) : super(key: key);

  final void Function()? onClick;
  final String? message;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Ошибка', style: Theme.of(context).textTheme.displaySmall),
              verticalSpaceLarge,
              if (message != null)
                Text(message!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.error)),
              verticalSpaceRegular,
              if (onClick != null)
                ElevatedButton(onPressed: onClick, child: Text(buttonTitle)),
            ],
          ),
        ),
      ),
    );
  }
}
