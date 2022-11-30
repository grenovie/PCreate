import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class BudgetComputer extends StatelessWidget {
  final VoidCallback openDrawer;

  const BudgetComputer({
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
          title: const Text(''),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/BGbcomp.jpg"),
                fit: BoxFit.cover,
                opacity: .4),
          ),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 30),
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(50, 130, 184, .4),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'BUDGET',
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.8),
                                    offset: const Offset(5, 5),
                                    blurRadius: 20),
                              ]),
                          children: const [
                            TextSpan(
                                text: "\nCOMPUTERS",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromRGBO(143, 227, 207, 1)))
                          ]),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(color: Colors.white),
                ))
              ]),
        ),
      );
}
