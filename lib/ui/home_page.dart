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
    return Column(
          children: [
            const Text('Hello World', textDirection: TextDirection.ltr,),
            DatePickerDialog(initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now())
          ],
        );
  }
}