import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
      ),
      drawer: const Drawer(
        child: HelloWorldDrawer(),
      ),
      body: const ErrorContent(),
    );
  }
}

class ErrorContent extends StatelessWidget {
  const ErrorContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Sorry, there was an error', textDirection: TextDirection.ltr,)
    );
  }
}