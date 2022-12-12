import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld()
  );
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child:Text(
      'Hello World',
      textDirection: TextDirection.ltr)
    );
  }
}