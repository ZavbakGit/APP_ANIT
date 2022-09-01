import 'package:flutter/material.dart';

import '../../disign_system/ui_helpers.dart';

class TestDesignSystemPage extends StatelessWidget {
  const TestDesignSystemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Дизайн система'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          children: [
            ...textWidgets(context),
            ...buttonsWidgets(context),
            ...fieldsWidgets(context),
            ...verticalSpasers(context),
            ...horizontalSpasers(context),
            ...colors(context),
          ],
        ),
      ),
    );
  }
}

List<Widget> textWidgets(BuildContext context) => [
      Text('Typography', style: Theme.of(context).textTheme.headlineSmall),
      const Divider(),
      Text('Display Large', style: Theme.of(context).textTheme.displayLarge),
      Text('Display Medium', style: Theme.of(context).textTheme.displayMedium),
      Text('Display Small', style: Theme.of(context).textTheme.displaySmall),
      Text('Headline Large', style: Theme.of(context).textTheme.headlineLarge),
      Text('Headline Medium',
          style: Theme.of(context).textTheme.headlineMedium),
      Text('Headline Small', style: Theme.of(context).textTheme.headlineSmall),
      Text('Title Large', style: Theme.of(context).textTheme.titleLarge),
      Text('Title Medium', style: Theme.of(context).textTheme.titleMedium),
      Text('Title Small', style: Theme.of(context).textTheme.titleSmall),
      Text('Lable Large', style: Theme.of(context).textTheme.labelLarge),
      Text('Lable Medium', style: Theme.of(context).textTheme.labelMedium),
      Text('Lable Small', style: Theme.of(context).textTheme.labelSmall),
      Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
      Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
      Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
    ];

List<Widget> fieldsWidgets(BuildContext context) => [
      Text('List title', style: Theme.of(context).textTheme.headlineSmall),
      const Divider(),
      verticalSpaceTiny,
      const ListTile(
        title: Text('Title'),
        subtitle: Text('Sub title'),
      ),
    ];

List<Widget> buttonsWidgets(BuildContext context) => [
      Text('Button', style: Theme.of(context).textTheme.headlineSmall),
      const Divider(),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Click me'),
      ),
      TextButton(
        onPressed: () {},
        child: const Text('Click me'),
      ),
    ];

List<Widget> verticalSpasers(BuildContext context) => [
      Text('Spasers Vertical',
          style: Theme.of(context).textTheme.headlineSmall),
      const Divider(),
      ...{
        'verticalSpaceLarge': verticalSpaceLarge,
        'verticalSpaceMedium': verticalSpaceMedium,
        'verticalSpaceRegular': verticalSpaceRegular,
        'verticalSpaceSmall': verticalSpaceSmall,
        'verticalSpaceTiny': verticalSpaceTiny
      }.entries.map((e) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(e.key),
                  e.value,
                  Text(e.key),
                ],
              ),
            ),
          )),
    ];

List<Widget> horizontalSpasers(BuildContext context) => [
      Text('Spasers Horisontal',
          style: Theme.of(context).textTheme.headlineSmall),
      const Divider(),
      ...{
        'horizontalSpaceLarge': horizontalSpaceLarge,
        'horizontalSpaceMedium': horizontalSpaceMedium,
        'horizontalSpaceRegular': horizontalSpaceRegular,
        'horizontalSpaceSmall': horizontalSpaceSmall,
        'horizontalSpaceTiny': horizontalSpaceTiny
      }.entries.map((e) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(e.key),
                  e.value,
                  Text(e.key),
                ],
              ),
            ),
          )),
    ];

List<Widget> colors(BuildContext context) => [
      Text('Colors', style: Theme.of(context).textTheme.headlineSmall),
      const Divider(),
      Card(
        color: Theme.of(context).colorScheme.primary,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('primary'),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.background,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('background'),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.onBackground,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'onBackground',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.error,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'error',
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.onPrimary,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'onPrimary',
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.onError,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'onError',
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.surface,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'surface',
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.onSurface,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'surface',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.secondary,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'secondary',
          ),
        ),
      ),
      Card(
        color: Theme.of(context).colorScheme.onSecondary,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'onSecondary',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    ];
