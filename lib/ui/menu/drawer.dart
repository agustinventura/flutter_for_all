import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HelloWorldDrawer extends StatelessWidget {
  const HelloWorldDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(child: Text(AppLocalizations.of(context).drawerTitle)),
        ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: Text(AppLocalizations.of(context).homePageTitle),
          onTap: () {
              context.goNamed('home');
          }
        ),
        ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: Text(AppLocalizations.of(context).settingPageTitle),
          onTap: () {
              context.goNamed('settings');
          },
        ),
      ],
    );
  }

}