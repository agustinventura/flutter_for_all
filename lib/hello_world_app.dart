import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/settings/settings_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_for_all/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HelloWorldApp extends ConsumerWidget {
  const HelloWorldApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsViewModelProvider);

    return MaterialApp.router(
        onGenerateTitle: (context) => AppLocalizations.of(context).appName,
        theme: settings.theme,
        routerConfig: router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}