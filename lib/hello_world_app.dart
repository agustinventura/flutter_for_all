import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/settings/settings_view_model.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_for_all/routes.dart';

class HelloWorldApp extends ConsumerWidget {
  const HelloWorldApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsViewModelProvider);

    return MaterialApp.router(
        title: 'Hello World App',
        theme: settings.theme,
        routerConfig: router,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('es')
        ],
    );
  }
}