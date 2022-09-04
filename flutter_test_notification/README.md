# flutter_test_notification

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter pub add firebase_core
dart pub global activate flutterfire_cli

потом копируем в параметры среды путь C:\Users\ALX\AppData\Local\Pub\Cache\bin

firebase login --reauth  //Перелогинемся
flutterfire configure

И только потом появятся firebase_options.dart


C:\flutter\packages\flutter_tools\gradle\flutter.gradle

 static int compileSdkVersion = 33

    /** Sets the minSdkVersion used by default in Flutter app projects. */
    static int minSdkVersion = 19

    /** Sets the targetSdkVersion used by default in Flutter app projects. */
    static int targetSdkVersion = 33


    Хотя надобыло в прооекте поменять