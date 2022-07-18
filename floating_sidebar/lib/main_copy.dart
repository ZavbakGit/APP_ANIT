import 'dart:ui';

import 'package:flutter/material.dart';

import 'my_drawer.dart';

void main() {
  runApp(const MyAppCopy());
}

class MyAppCopy extends StatelessWidget {
  const MyAppCopy({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 1/0'),
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
  final _duration = const Duration(milliseconds: 500);
  bool isClosed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontFeatures: const [
              FontFeature.fractions(),
              FontFeature.stylisticAlternates(),
            ],
          ),
        ),
        leading: InkWell(
          onTap: _onMenuTap,
          child: const Icon(
            Icons.list,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(color: Colors.white),
          AnimatedPositioned(
            duration: _duration,
            left: isClosed ? -300 : 20,
            top: 50,
            child: AnimatedOpacity(
              opacity: isClosed ? 0 : 1,
              duration: _duration,
              child: const MyDrawer(),
            ),
          ),
        ],
      ),
    );
  }

  void _onMenuTap() {
    setState(() {
      isClosed = !isClosed;
    });
  }
}
