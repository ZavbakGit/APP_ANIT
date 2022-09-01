import 'package:flutter/material.dart';

void showConfirmDialog({
  required BuildContext context,
  required Function() confirmed,
  required Function() notConfirmed,
}) {
  showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Внимание"),
        content: const Text("Задача изменена. Сохранить?"),
        actions: [
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('Cancel'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('ОК'),
          ),
        ],
      );
    },
  ).then((value) {
    if (value != null) {
      if (value) {
        confirmed();
      } else {
        notConfirmed();
      }
    }
  });
}
