import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          onTap: () {
              context.goNamed('home');
          }
        ),
        ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
          onTap: () {
              context.goNamed('settings');
          },
        ),
      ],
    );
  }

}