import 'package:flutter/material.dart';
import 'package:flutter_for_all/routes.dart';

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Hello World App',
        theme: ThemeData.dark(),
        routerConfig: router,
    );
  }
}