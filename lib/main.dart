import 'package:flutter/material.dart';
import 'package:test1/model/drawer_item.dart';
import 'package:test1/page/drawer/budget_computer.dart';
import 'package:test1/page/drawer/home_page.dart';
import 'package:test1/page/drawer/parts_comparison.dart';
import 'package:test1/page/drawer/system_unit_builder.dart';
import 'package:test1/page/drawer/troubleshooting.dart';
import 'package:test1/page/drawer/where_to_buy.dart';
import 'package:test1/widget/drawer_widget.dart';

import 'data/drawer_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PCreate Mobile App',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            primaryColor: Color.fromRGBO(45, 53, 61, 1), //change color here
            // ignore: prefer_const_constructors
            primaryColorLight: Color.fromRGBO(25, 29, 32, 1)),
        home: const MainPage(),
      );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  bool isDragging = false;
  DrawerItem item = DrawerItems.home;

  @override
  void initState() {
    super.initState();

    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });

  void openDrawer() => setState(() {
        xOffset = 230;
        yOffset = 150;
        scaleFactor = 0.6;
        isDrawerOpen = true;
      });
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/BGdrawer3.jpg"),
                  fit: BoxFit.cover,
                  opacity: .5)),
          child: Stack(
            children: [
              buildDrawer(),
              buildPage(),
            ],
          ),
        ),
      );

  Widget buildDrawer() => SafeArea(
        child: Container(
          color: Colors.transparent,
          width: xOffset,
          child: DrawerWidget(
            onSelectedItem: (item) {
              setState(() => this.item = item);
              closeDrawer();
            },
          ),
        ),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();

          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
              clipBehavior: Clip.antiAlias,
              child: Container(
                color: isDrawerOpen
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor,
                child: getDrawerPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDrawerPage() {
    switch (item) {
      case DrawerItems.interactiveSystemUnitBuilder:
        return SystemUnitBuilder(openDrawer: openDrawer);
      case DrawerItems.prebuiltBudgetComputer:
        return BudgetComputer(openDrawer: openDrawer);
      case DrawerItems.whereToBuySection:
        return WhereToBuy(openDrawer: openDrawer);
      case DrawerItems.troubleshooting:
        return Troubleshooting(openDrawer: openDrawer);
      case DrawerItems.partsComparison:
        return PartsComparison(openDrawer: openDrawer);
      case DrawerItems.home:
        return HomePage(openDrawer: openDrawer);
      default:
        return HomePage(openDrawer: openDrawer);
    }
  }
}
