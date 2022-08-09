import 'package:flutter/material.dart';

import '../../disign_system/widgets/ds_text.dart';
import '../../disign_system/saherd/ui_helpers.dart';
import '../../disign_system/widgets/ds_fields.dart';

class TestDesignSystemPage extends StatelessWidget {
  const TestDesignSystemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          children: [
            ...textWidgets,
            verticalSpaceMedium,
            ...fieldsWidgets,
            verticalSpaceMedium,
            ...buttonsWidgets
          ],
        ),
      ),
    );
  }
}

List<Widget> get textWidgets => [
      const DsText.headingOne('Text Styles'),
      const Divider(thickness: 1),
      verticalSpaceSmall,
      const DsText.headingOne('Heading One 1'),
      const DsText.headingTwo('Heading Two'),
      const DsText.headingThree('Heading Three'),
      verticalSpaceMedium,
      const DsText.text1('Text 1'),
      const DsText.text2('Text 2'),
      const DsText.text3('Text 3'),
      const DsText.text4('Text 4'),
      const DsText.text5('Text 5'),
      verticalSpaceMedium,
      const DsText.textButton('Text button'),
    ];

List<Widget> get fieldsWidgets => [
      const DsText.headingOne('Fields Styles'),
      const Divider(thickness: 1),
      verticalSpaceTiny,
      const DsField(
        title: 'Ответственный',
        subtitle: 'Петров Николай Васильевич',
      ),
    ];

List<Widget> get buttonsWidgets => [
      const DsText.headingOne('Button Styles'),
      const Divider(thickness: 1),
      verticalSpaceTiny,
      ElevatedButton(
        onPressed: () {},
        child: const DsText.textButton('Click me'),
      ),
      TextButton(
        onPressed: () {},
        child: const DsText.textButton('Click me'),
      ),
    ];
