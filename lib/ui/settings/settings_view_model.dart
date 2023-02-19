import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsViewModelProvider = NotifierProvider<SettingsViewModel, ThemeData>(() {
  return SettingsViewModel();
});

class SettingsViewModel extends Notifier<ThemeData>{

  @override
  ThemeData build() {
    return ThemeData.dark();
  }

  currentTheme() => state;

  toggleTheme() => state =  state.brightness == Brightness.dark ? ThemeData.light() : ThemeData.dark();

}