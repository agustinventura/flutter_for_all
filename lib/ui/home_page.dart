import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World Page'),
      ),
      drawer: const Drawer(
        child: HelloWorldDrawer(),
      ),
      body: const HelloWorldContent(),
    );
  }
}

class HelloWorldContent extends StatelessWidget {
  const HelloWorldContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Hello World', textDirection: TextDirection.ltr,)
    );
  }
}