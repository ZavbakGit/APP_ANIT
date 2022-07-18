import 'dart:ui';

import 'package:flutter/material.dart';

import 'my_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final _duration = const Duration(milliseconds: 800);
  late AnimationController _animationController;
  late Animation<double> _leftPosition;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: _duration, vsync: this);

    _leftPosition = Tween<double>(
      begin: -300,
      end: 20,
    ).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.easeInOutBack //Curves.bounceOut, //с отскоком
          ),
    );
    //.animate(_animationController); //прямая
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
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
            leading: Center(
              child: InkWell(
                onTap: _onMenuTap,
                child: AnimatedIcon(
                  progress: _animationController.view, //Меняется от 0-1
                  icon: AnimatedIcons.menu_close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          body: Stack(
            children: [
              Container(color: Colors.white),
              Positioned(
                left: _leftPosition.value,
                top: _leftPosition.value,
                child: Opacity(
                  opacity: _animationController.value,
                  child: child,
                ),
              ),
            ],
          ),
        );
      },
      child: const MyDrawer(),
    );
  }

  void _onMenuTap() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }
}
