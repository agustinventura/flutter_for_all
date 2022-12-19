import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      }
    ),
    GoRoute(
      path: '/theme_switcher',
      builder: (BuildContext context, GoRouterState state) {
        return const ThemeSwitchPage();
      },
    )
  ],
);

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World App',
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello World Page'),
          ),
          drawer: const Drawer(
            child: HelloWorldDrawer(),
          ),
          body: const HelloWorldContent(),
        ));
  }
}

class HelloWorldDrawer extends StatelessWidget {
  const HelloWorldDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const DrawerHeader(child: Text('Hello World Drawer Header')),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text('Hello World Page'),
          onTap: () => context.go('/'),
        ),
        ListTile(
          leading: const Icon(
            Icons.color_lens,
          ),
          title: const Text('Theme Switcher'),
          onTap: () => context.go('/theme_switcher'),
        ),
      ],
    );
  }
}

class HelloWorldContent extends StatelessWidget {
  const HelloWorldContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Hello World',
      textDirection: TextDirection.ltr,
    ));
  }
}

class ThemeSwitchPage extends StatefulWidget {
  const ThemeSwitchPage({super.key});

  @override
  State<ThemeSwitchPage> createState() => _ThemeSwitchPageState();
}

class _ThemeSwitchPageState extends State<ThemeSwitchPage> {
  bool _light = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _light ? ThemeData.light() : ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(title: const Text('Theme Switcher')),
          drawer: const Drawer(child: HelloWorldDrawer()),
          body: Center(
            child: ElevatedButton(
                onPressed: () => _changeTheme(),
                child: const Text('Press to change theme')),
          ),
        ));
  }

  _changeTheme() {
    setState(() {
      _light = !_light;
    });
  }
}
