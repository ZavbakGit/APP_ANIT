import 'package:flutter/material.dart';

import '../../../presenter/disign_system/ui_helpers.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
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
    return Center(
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
    );
  }
}
