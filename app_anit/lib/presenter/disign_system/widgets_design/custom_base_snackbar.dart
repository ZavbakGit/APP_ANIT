import 'package:flutter/material.dart';

/// Базовая сущность для работы со снекбарами
class CustomBaseSnackbar {
  /// Метод оторбажающий снекбар c возможностью указать
  /// текст кнопки и колбэка нажатия по кнопке (должны быть указаны и текст и колбэк нажатия)
  ///  [context] - контекст
  ///  [text] - текст основной
  ///  [actionLabel] - текст на кнопке (если указан)
  ///  [actionPressedCallback] - колбэк нажатия на кнопку
  static void show({
    required BuildContext context,
    required String text,
    String? actionLabel,
    VoidCallback? actionPressedCallback,
  }) {
    final snackBarAction =
        (actionLabel != null && actionPressedCallback != null)
            ? SnackBarAction(
                label: actionLabel,
                onPressed: actionPressedCallback,
              )
            : null;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      action: snackBarAction,
    ));
  }
}
