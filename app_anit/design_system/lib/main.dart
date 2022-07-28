import 'package:design_system/ds_ui.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          children: [
            const DsText.headingOne('Design System'),
            verticalSpaceSmall,
            const Divider(),
            verticalSpaceSmall,
            ...buttonWidgets,
            ...textWidgets,
            ...inputFields,
          ],
        ),
      ),
    );
  }
}

List<Widget> get textWidgets => [
      const DsText.headline('Text Styles'),
      verticalSpaceMedium,
      const DsText.headingOne('Heading One'),
      verticalSpaceMedium,
      const DsText.headingTwo('Heading Two'),
      verticalSpaceMedium,
      const DsText.headingThree('Heading Three'),
      verticalSpaceMedium,
      const DsText.headline('Headline'),
      verticalSpaceMedium,
      const DsText.subheading('This will be a sub heading to the headling'),
      verticalSpaceMedium,
      DsText.body('Body Text that will be used for the general body'),
      verticalSpaceMedium,
      const DsText.caption(
          'This will be the caption usually for smaller details'),
      verticalSpaceMedium,
    ];

List<Widget> get buttonWidgets => [
      const DsText.headline('Buttons'),
      verticalSpaceMedium,
      DsText.body('Normal'),
      verticalSpaceSmall,
      const DsButton(
        title: 'SIGN IN',
      ),
      verticalSpaceSmall,
      DsText.body('Disabled'),
      verticalSpaceSmall,
      const DsButton(
        title: 'SIGN IN',
        disabled: true,
      ),
      verticalSpaceSmall,
      DsText.body('Busy'),
      verticalSpaceSmall,
      const DsButton(
        title: 'SIGN IN',
        busy: true,
      ),
      verticalSpaceSmall,
      DsText.body('Outline'),
      verticalSpaceSmall,
      const DsButton.outline(
        title: 'Select location',
        leading: Icon(
          Icons.send,
          color: kcPrimaryColor,
        ),
      ),
      verticalSpaceMedium,
    ];

List<Widget> get inputFields => [
      const DsText.headline('Input Field'),
      verticalSpaceSmall,
      DsText.body('Normal'),
      verticalSpaceSmall,
      DsInputField(
        controller: TextEditingController(),
        placeholder: 'Enter Password',
      ),
      verticalSpaceSmall,
      DsText.body('Leading Icon'),
      verticalSpaceSmall,
      DsInputField(
        controller: TextEditingController(),
        leading: const Icon(Icons.reset_tv),
        placeholder: 'Enter TV Code',
      ),
      verticalSpaceSmall,
      DsText.body('Trailing Icon'),
      verticalSpaceSmall,
      DsInputField(
        controller: TextEditingController(),
        trailing: const Icon(Icons.clear_outlined),
        placeholder: 'Search for things',
      ),
    ];
