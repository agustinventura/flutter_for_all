import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, '/');
          }
        ),
        ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
          onTap: () {
              Navigator.pushNamed(context, '/settings', arguments: Theme.of(context));
          },
        ),
      ],
    );
  }

}