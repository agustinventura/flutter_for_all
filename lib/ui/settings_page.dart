import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';

class SettingsPage extends StatelessWidget {
  final ThemeData theme;

  const SettingsPage({
    Key? key, required this.theme,
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
      body: SettingsContent(theme: theme,),
    );
  }
}

class SettingsContent extends StatelessWidget {
  final ThemeData theme;

  const SettingsContent({
    Key? key, required this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text('Settings', textDirection: TextDirection.ltr),
              Text('Current theme is ${theme.brightness == Brightness.dark ? 'dark' : 'light'}')
          ],
        )
    );
  }
}