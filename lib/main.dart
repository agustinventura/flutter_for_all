import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'hello_world_app.dart';

void main() {
  runApp(
      const ProviderScope(
          child: HelloWorldApp()
      )
  );
}