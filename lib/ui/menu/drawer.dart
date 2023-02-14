import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/hello_world_page.dart';
import 'package:flutter_for_all/ui/settings_page.dart';

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
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
          }
        ),
        ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
          onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
          },
        ),
      ],
    );
  }

}