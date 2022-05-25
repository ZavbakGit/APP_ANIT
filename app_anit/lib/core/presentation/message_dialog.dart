import 'package:flutter/material.dart';

Future<void> showCustomMessageDialog({
  required BuildContext context,
  String? title,
  String? message,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title ?? ''),
        content: Text(message ?? ''),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
