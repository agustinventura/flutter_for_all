import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsViewModelProvider = NotifierProvider<SettingsViewModel, Settings>(() {
  return SettingsViewModel();
});

class SettingsViewModel extends Notifier<Settings>{

  @override
  Settings build() {
    return Settings(theme: ThemeData.dark());
  }

  currentTheme() => state;

  toggleTheme() => state =  state.theme.brightness == Brightness.dark ? Settings(theme: ThemeData.light()) :Settings(theme: ThemeData.dark());

}