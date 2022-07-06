import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            spreadRadius: 10.0,
            color: Colors.black.withOpacity(0.1),
          )
        ],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 250,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Center(child: Text('Диалог')),
              const Icon(Icons.lock_clock, color: Colors.black),
              const Icon(Icons.lock_clock, color: Colors.black),
              const Icon(Icons.lock_clock, color: Colors.black),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
