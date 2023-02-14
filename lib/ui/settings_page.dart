import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      drawer: const Drawer(
        child: HelloWorldDrawer(),
      ),
      body: const SettingsContent(),
    );
  }
}

class SettingsContent extends StatelessWidget {
  const SettingsContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text('Settings', textDirection: TextDirection.ltr),
              ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Back'))
          ],
        )
    );
  }
}