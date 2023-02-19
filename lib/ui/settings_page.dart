import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';

class SettingsPage extends StatelessWidget {
  final ThemeData _theme;

  const SettingsPage(this._theme, {
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
      body: SettingsContent(_theme),
    );
  }
}

class SettingsContent extends StatefulWidget {
  final ThemeData _theme;

  const SettingsContent(this._theme, {
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsContent> createState() => _SettingsContentState(_theme);


}

class _SettingsContentState extends State<SettingsContent> {
  
  ThemeData _theme;
  
  _SettingsContentState(this._theme);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Settings', textDirection: TextDirection.ltr),
            Text('Current theme is ${_theme.brightness == Brightness.dark ? 'dark' : 'light'}'),
            ElevatedButton(onPressed: _toggleTheme, child: const Text('Change theme'))
          ],
        )
    );
  }

  void _toggleTheme() {
    setState(() {
      if (_theme.brightness == Brightness.dark) {
        _theme = ThemeData.light();
      } else {
        _theme = ThemeData.dark();
      }
    });
  }
}