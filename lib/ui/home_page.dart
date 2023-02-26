import 'package:flutter/material.dart';
import 'package:flutter_for_all/ui/menu/drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).homePageTitle),
      ),
      drawer: const Drawer(
        child: HelloWorldDrawer(),
      ),
      body: const HelloWorldContent(),
    );
  }
}

class HelloWorldContent extends StatelessWidget {
  const HelloWorldContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Text(AppLocalizations.of(context).homePageTitle)
    );
  }
}