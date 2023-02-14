import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/error_page.dart';
import 'package:flutter_for_all/ui/hello_world_page.dart';
import 'package:flutter_for_all/ui/settings_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/settings':
        if (args is ThemeData) {
          return MaterialPageRoute(
            builder: (_) => SettingsPage(
              theme: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const ErrorPage();
    });
  }
}