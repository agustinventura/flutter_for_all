import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {

  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).settingPageTitle),
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
            Text(AppLocalizations.of(context).settingsActiveTheme(settings.theme.brightness == Brightness.dark ? AppLocalizations.of(context).settingsDarkTheme: AppLocalizations.of(context).settingsLightTheme)),
            ElevatedButton(onPressed: () => ref.read(settingsViewModelProvider.notifier).toggleTheme(), child: Text(AppLocalizations.of(context).settingsChangeThemeButton))
          ],
        )
    );
  }
}