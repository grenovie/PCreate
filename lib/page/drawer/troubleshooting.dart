import 'package:flutter/material.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class Troubleshooting extends StatelessWidget {
  final VoidCallback openDrawer;

  const Troubleshooting({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: DrawerMenuWidget(
            onClicked: openDrawer,
          ),
          backgroundColor: Theme.of(context).primaryColorLight,
          title: const Text('Troubleshooting'),
        ),
      );
}
