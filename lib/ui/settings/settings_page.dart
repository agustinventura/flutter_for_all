import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings_view_model.dart';

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

class SettingsContent extends ConsumerWidget {

  const SettingsContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsViewModelProvider);

    return Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Settings', textDirection: TextDirection.ltr),
            Text('Current theme is ${settings.theme.brightness == Brightness.dark ? 'dark' : 'light'}'),
            ElevatedButton(onPressed: () => ref.read(settingsViewModelProvider.notifier).toggleTheme(), child: const Text('Change theme'))
          ],
        )
    );
  }
}