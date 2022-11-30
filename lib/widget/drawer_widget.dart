import 'package:flutter/material.dart';
import 'package:test1/data/drawer_items.dart';
import 'package:test1/model/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerWidget({Key? key, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        //--> image above the drawer menu ITEMS
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage(
        //         "assets/BGdrawer.jpg",
        //       ),
        //       opacity: .4,
        //       fit: BoxFit.cover,
        //       scale: 1),
        // ),
        padding: const EdgeInsets.only(top: 150),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildDrawerItems(context),
            ],
          ),
        ),
      );

  Widget buildDrawerItems(BuildContext context) => Column(
        children: DrawerItems.all
            .map((item) => ListTile(
                  tileColor: Colors.black45,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  leading: Icon(
                    item.icon,
                    color: Colors.white,
                  ),
                  title: Text(
                    item.title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  onTap: () => onSelectedItem(item),
                ))
            .toList(),
      );
}
