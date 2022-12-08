import 'package:flutter/material.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class HomePage extends StatelessWidget {
  final VoidCallback openDrawer;

  const HomePage({
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
                image: AssetImage("assets/BGdev.jpg"),
                fit: BoxFit.cover,
                opacity: .5),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ListView(
              itemExtent: 200,
              padding: const EdgeInsets.all(10),
              children: [
                Center(
                    child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'PC',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: 'REATE', style: TextStyle(fontSize: 40)),
                        TextSpan(
                            text: "\nDEVELOPERS",
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.blue))
                      ]),
                )),
                Center(
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/bacia.jpg"),
                          scale: 2,
                          fit: BoxFit.cover),
                      color: const Color.fromRGBO(95, 111, 148, .5),
                      border: Border.all(
                          color: const Color.fromRGBO(151, 210, 236, 1),
                          width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    // --> child: "image child here"
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 130),
                        child: const Text(
                          "Bacia, Cyril Joseph A.\njosephcyrilbacia@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/elumir.jpg"),
                          scale: 2,
                          fit: BoxFit.cover),
                      color: const Color.fromRGBO(95, 111, 148, .5),
                      border: Border.all(
                          color: const Color.fromRGBO(151, 210, 236, 1),
                          width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    // --> child: "image child here"
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 130),
                        child: const Text(
                          "Elumir, Grenovie C.\ngrenoviemagi15@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/linezo.jpg"),
                          scale: 2,
                          fit: BoxFit.cover),
                      color: const Color.fromRGBO(95, 111, 148, .5),
                      border: Border.all(
                          color: const Color.fromRGBO(151, 210, 236, 1),
                          width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    // --> child: "image child here"
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 130),
                        child: const Text(
                          "Linezo, Rance Christian\nchristianlinezo27@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/ordanza.jpg"),
                          scale: 2,
                          fit: BoxFit.cover),
                      color: const Color.fromRGBO(95, 111, 148, .5),
                      border: Border.all(
                          color: const Color.fromRGBO(151, 210, 236, 1),
                          width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    // --> child: "image child here"
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 130),
                        child: const Text(
                          "Ordanza, Earl Cedric\nordanza.cedric@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
