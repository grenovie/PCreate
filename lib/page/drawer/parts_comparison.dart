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
  String? infoP1 = "";

  @override
  void initState() {
    getThingsOnStartup().then((value) {
      getSysImage();
    });

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
                image: AssetImage("assets/BGcompare.jpg"),
                fit: BoxFit.cover,
                opacity: .5),
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
                        if (value[0] == true) {
                          getSysImage();
                        }
                      });
                    },
                    child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.red[200],
                            border: Border.all(
                              color: const Color.fromARGB(255, 15, 59, 112),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            compareImage == null
                                ? Image.asset(
                                    "assets/animated/screen_no_parts.png",
                                    fit: BoxFit.fill,
                                  )
                                : Image.asset(
                                    compareImage!,
                                    fit: BoxFit.fill,
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
                        color: Colors.blue[200],
                        border: Border.all(
                          color: const Color.fromARGB(255, 15, 59, 112),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Stack(
                      children: [
                        compareImage2 == null
                            ? Image.asset(
                                "assets/animated/screen_no_parts.png",
                                fit: BoxFit.fill,
                              )
                            : Image.asset(
                                compareImage2!,
                                fit: BoxFit.fill,
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
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.red[200],
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: "PC Part 1\n\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    backgroundColor: Colors.white12),
                                children: [TextSpan(text: infoP1)],
                              )),
                        ),
                      ),
                      //-> blue container
                      Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: Border.all(
                              color: const Color.fromARGB(255, 15, 59, 112),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
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
    infoP1 = pref.getString('compare_systemcase_name');
    setState(() {});
  }

  void getSysImage2() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    compareImage2 = pref.getString('compare_pcImage_part2');
    setState(() {});
  }
}
