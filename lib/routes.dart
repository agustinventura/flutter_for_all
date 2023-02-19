import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/error_page.dart';
import 'package:flutter_for_all/ui/home_page.dart';
import 'package:flutter_for_all/ui/settings_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
            name: 'settings',
            path: 'settings',
            builder: (context, state) => SettingsPage(state.extra as ThemeData)
        )
      ]
    )
  ],
  errorBuilder: (context, state) => const ErrorPage()
);