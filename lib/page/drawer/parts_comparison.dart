import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/require_parts_comparison/item_types.dart';
import 'package:test1/require_parts_comparison2/item_types.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class PartsComparison extends StatefulWidget {
  final VoidCallback openDrawer;

  const PartsComparison({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<PartsComparison> createState() => _PartsComparisonState();
}

class _PartsComparisonState extends State<PartsComparison> {
  String? compareImage;
  String? compareImage2;
  //infoStrings
  String? info1P1 = ".";
  String? info2P1 = ".";
  String? info3P1 = ".";
  String? info4P1 = ".";
  String? info5P1 = ".";
  String? info6P1 = ".";
  String? info7P1 = ".";
  String? info8P1 = ".";
  String? info9P1 = ".";
  //infoStringsPart2
  String? info1P2 = ".";
  String? info2P2 = ".";
  String? info3P2 = ".";
  String? info4P2 = ".";
  String? info5P2 = ".";
  String? info6P2 = ".";
  String? info7P2 = ".";
  String? info8P2 = ".";
  String? info9P2 = ".";

  @override
  void initState() {
    removeStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar(context),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/BGbudget.jpg"),
                fit: BoxFit.cover,
                opacity: .2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              //item 1
              Positioned(
                top: 70,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TypesOfItemsCompare())).then((value) {
                        if (value == true) {
                          getSysImage();
                        }
                      });
                    },
                    child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            // color: Colors.red[200],
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/animated/ItemCardBG2.jpg"),
                                fit: BoxFit.none,
                                scale: 10),
                            border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 15, 59, 112),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            compareImage == null
                                ? Image.asset(
                                    "assets/partscomparison.png",
                                    fit: BoxFit.fill,
                                  )
                                : Center(
                                    child: Image.asset(
                                      compareImage!,
                                      fit: BoxFit.fill,
                                      scale: 1.5,
                                    ),
                                  )
                          ],
                        ))),
              ),
              //item 2
              Positioned(
                top: 70,
                right: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TypesOfItemsCompare2())).then((value) {
                      if (value == true) {
                        getSysImage2();
                      }
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        // color: Colors.blue[200],
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/animated/ItemCardBG2.jpg"),
                            fit: BoxFit.none,
                            scale: 10),
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 15, 59, 112),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Stack(
                      children: [
                        compareImage2 == null
                            ? Image.asset(
                                "assets/partscomparison.png",
                                fit: BoxFit.fill,
                              )
                            : Center(
                                child: Image.asset(
                                  compareImage2!,
                                  fit: BoxFit.fill,
                                  scale: 1.5,
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ),
              //display_aboutInfo
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Center(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        //-> red container
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/animated/BlueInfo.jpg"),
                                  fit: BoxFit.none,
                                  opacity: .4,
                                  scale: 2.5),
                              border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 11, 46, 75),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                text: "PC PART 1\n\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    backgroundColor: Colors.white12),
                                children: [
                                  TextSpan(text: "$info1P1\n\n"),
                                  TextSpan(text: "$info2P1\n\n"),
                                  TextSpan(text: "$info3P1\n\n"),
                                  TextSpan(text: "$info4P1\n\n"),
                                  TextSpan(text: "$info5P1\n\n"),
                                  TextSpan(text: "$info6P1\n\n"),
                                  TextSpan(text: "$info7P1\n\n"),
                                  TextSpan(text: "$info8P1\n\n"),
                                  TextSpan(text: "$info9P1\n\n"),
                                ],
                              )),
                        ),
                      ),
                      //-> blue container
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/animated/BlueInfo.jpg"),
                                fit: BoxFit.none,
                                opacity: .4,
                                scale: 2.5),
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 11, 46, 75)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "PC PART 2\n\n",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  backgroundColor: Colors.white12),
                              children: [
                                TextSpan(text: "$info1P2\n\n"),
                                TextSpan(text: "$info2P2\n\n"),
                                TextSpan(text: "$info3P2\n\n"),
                                TextSpan(text: "$info4P2\n\n"),
                                TextSpan(text: "$info5P2\n\n"),
                                TextSpan(text: "$info6P2\n\n"),
                                TextSpan(text: "$info7P2\n\n"),
                                TextSpan(text: "$info8P2\n\n"),
                                TextSpan(text: "$info9P2\n\n"),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              //! NOTHERE
              //-> title Area
              Positioned(
                left: 50,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  width: MediaQuery.of(context).size.width * .7,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(3, 83, 151, .3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'PARTS COMPARISON',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.black.withOpacity(0.8),
                                  offset: const Offset(5, 5),
                                  blurRadius: 20),
                            ]),
                        children: const [
                          TextSpan(
                              text: "\n---------",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromRGBO(255, 170, 76, 1)))
                        ]),
                  ),
                ),
              ),
            ]),
          ),
        ),
      );

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: DrawerMenuWidget(
        onClicked: widget.openDrawer,
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
      title: const Text(''),
    );
  }

  Future getThingsOnStartup() async {
    await Future.delayed(const Duration(milliseconds: 600));
  }

  void getSysImage() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    compareImage = pref.getString('compare_pcImage_part1');
    info1P1 = pref.getString('compare_info1P1');
    info2P1 = pref.getString('compare_info2P1');
    info3P1 = pref.getString('compare_info3P1');
    info4P1 = pref.getString('compare_info4P1');
    info5P1 = pref.getString('compare_info5P1');
    info6P1 = pref.getString('compare_info6P1');
    info7P1 = pref.getString('compare_info7P1');
    info8P1 = pref.getString('compare_info8P1');
    info9P1 = pref.getString('compare_info9P1');
    setState(() {});
  }

  void getSysImage2() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    compareImage2 = pref.getString('compare_pcImage_part2');
    info1P2 = pref.getString('compare_info1P2');
    info2P2 = pref.getString('compare_info2P2');
    info3P2 = pref.getString('compare_info3P2');
    info4P2 = pref.getString('compare_info4P2');
    info5P2 = pref.getString('compare_info5P2');
    info6P2 = pref.getString('compare_info6P2');
    info7P2 = pref.getString('compare_info7P2');
    info8P2 = pref.getString('compare_info8P2');
    info9P2 = pref.getString('compare_info9P2');
    setState(() {});
  }

  void removeStore() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('compare_pcImage_part1');
    pref.remove('compare_pcImage_part2');
    pref.remove('compare_info1P1');
    pref.remove('compare_info2P1');
    pref.remove('compare_info3P1');
    pref.remove('compare_info4P1');
    pref.remove('compare_info5P1');
    pref.remove('compare_info6P1');
    pref.remove('compare_info7P1');
    pref.remove('compare_info8P1');
    pref.remove('compare_info9P1');
    pref.remove('compare_info1P2');
    pref.remove('compare_info2P2');
    pref.remove('compare_info3P2');
    pref.remove('compare_info4P2');
    pref.remove('compare_info5P2');
    pref.remove('compare_info6P2');
    pref.remove('compare_info7P2');
    pref.remove('compare_info8P2');
    pref.remove('compare_info9P2');
  }
}
