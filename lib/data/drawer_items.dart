// import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/model/drawer_item.dart';

class DrawerItems {
  static const interactiveSystemUnitBuilder =
      DrawerItem(title: "System Unit Builder", icon: FontAwesomeIcons.computer);
  static const prebuiltBudgetComputer = DrawerItem(
      title: "Budget Computer", icon: FontAwesomeIcons.magnifyingGlassDollar);
  static const whereToBuySection =
      DrawerItem(title: "Where to Buy ", icon: FontAwesomeIcons.cartShopping);
  static const troubleshooting = DrawerItem(
      title: "Troubleshooting", icon: FontAwesomeIcons.screwdriverWrench);
  static const partsComparison =
      DrawerItem(title: "Parts Comparison", icon: FontAwesomeIcons.codeCompare);
  static const home =
      DrawerItem(title: "Developers", icon: FontAwesomeIcons.users);
  static final List<DrawerItem> all = [
    interactiveSystemUnitBuilder,
    prebuiltBudgetComputer,
    whereToBuySection,
    troubleshooting,
    partsComparison,
    home,
  ];
}
