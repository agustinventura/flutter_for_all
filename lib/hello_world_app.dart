import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/hello_world_page.dart';

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World App',
        theme: ThemeData.dark(),
        home: const HomePage()
    );
  }
}