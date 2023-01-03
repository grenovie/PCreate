import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/stats/items_options/item_types.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

import '../../stats/systemunit_builder/end_drawer.dart';

class SystemUnitBuilder extends StatefulWidget {
  final VoidCallback openDrawer;

  const SystemUnitBuilder({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<SystemUnitBuilder> createState() => _SystemUnitBuilderState();
}

NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

class _SystemUnitBuilderState extends State<SystemUnitBuilder>
    with TickerProviderStateMixin {
  late final AnimationController caseController,
      cpuController,
      moboController,
      ramController,
      romController,
      psuController,
      gpuController;
  late final TransformationController sndcontroller;
  late final AnimationController animationController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Animation<Matrix4>? animation;
  //all DATA that can be update in this AREA only
  Color color = Colors.white;
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  Color color3 = Colors.white;
  Color color4 = Colors.white;
  Color color5 = Colors.white;
  Color color6 = Colors.white;
  Color finalBtn = Colors.red;
  String? sysImg;
  String? sysProcessor;
  String? sysMemory;
  String? sysStorage;
  String? sysPsu;
  String? sysMotherboard;
  String? sysGpu;
  //==>System Unit Case Info
  String? systemUnitCase = "";
  String? infoMotherboard = "";
  String? infoProcessor = "";
  String? infoStorage = "";
  String? infoPSU = "";
  String? infoGPU = "";
  String? infoRAM = "";

  double? priceSyscase = 0;
  double? priceMobo = 0;
  double? priceCpu = 0;
  double? priceRam = 0;
  double? priceRom = 0;
  double? pricePsu = 0;
  double? priceGpu;

  double? p1;
  double? p2;

  String? totalT = "";
  //! different vars below
  double? cpuX1 = 0;
  double? cpuX2 = 0;

  bool reverse = false;
  @override
  void initState() {
    getSysGpu();
    super.initState();
    resetAll();

    // --> animation Controllers
    caseController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    cpuController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    moboController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    ramController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    romController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    psuController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    gpuController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    sndcontroller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() => sndcontroller.value = animation!.value);
  }

  // --> dispose animation
  @override
  void dispose() {
    caseController.dispose();
    cpuController.dispose();
    moboController.dispose();
    ramController.dispose();
    romController.dispose();
    psuController.dispose();
    gpuController.dispose();
    sndcontroller.dispose();
    animationController.dispose();
    super.dispose();
  }

  void _openEndDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  tutorialModal(context);
                },
                icon: Icon(
                  Icons.question_mark,
                  color: Colors.white,
                ))
          ],
          leading: DrawerMenuWidget(
            onClicked: widget.openDrawer,
          ),
          backgroundColor: Theme.of(context).primaryColorLight,
          title: const Text('System Unit Builder'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // --> button and function for updating case
                            getSysCase();
                            caseController.forward();
                            setState(() {
                              color = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            caseController.reverse();
                            setState(() {
                              color = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Case",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // --> button and function for updating Main Board
                            getSysMobo();
                            moboController.forward();
                            setState(() {
                              color2 = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            moboController.reverse();

                            setState(() {
                              color2 = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color2,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Main Board",
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // --> button and function for updating cpu
                            getSysProcessor();
                            cpuController.forward();

                            setState(() {
                              color1 = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            cpuController.reverse();
                            setState(() {
                              color1 = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color1,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "CPU",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // --> button and function for updating Memory / RAM
                            getSysRam();
                            ramController.forward();

                            setState(() {
                              color3 = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            ramController.reverse();
                            setState(() {
                              color3 = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color3,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "RAM",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // --> button and function for updating Storage / ROM
                            getSysRom();
                            romController.forward();

                            setState(() {
                              color4 = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            romController.reverse();
                            setState(() {
                              color4 = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color4,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Storage",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // --> button and function for updating Power Supply / PSU
                            getSysPsu();
                            psuController.forward();
                            finalBtn = Colors.green;
                            setState(() {
                              color5 = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            psuController.reverse();
                            setState(() {
                              finalBtn = Colors.red;
                              color5 = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color5,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "PSU",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // --> button and function for updating Graphics Card / GPU
                            getSysGpu();
                            gpuController.forward();

                            setState(() {
                              color6 = Colors.greenAccent;
                            });
                          },
                          onLongPress: () {
                            gpuController.reverse();
                            setState(() {
                              color6 = Colors.white;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color6,
                                border: Border.all(
                                    width: 0,
                                    color:
                                        const Color.fromARGB(255, 37, 43, 44))),
                            height: 50,
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "GPU",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InteractiveViewer(
                  transformationController: sndcontroller,
                  onInteractionEnd: (details) {
                    resetAnimation();
                  },
                  child: Container(
                    // --> this container must put all animations
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/animated/main_screen.jpg"),
                          fit: BoxFit.cover,
                          opacity: .5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      // color: Color.fromARGB(255, 139, 139,
                      //     139),
                    ), // --> background color of the main_scr
                    child: SizedBox(
                      height: 350,
                      width: MediaQuery.of(context).size.width * .85,
                      child: Stack(
                        children: [
                          // ! PUT THE POWER SUPPLY UNIT HERE
                          //--> for the Power Supply/PSU
                          SizedBox(
                            height: 350,
                            width: 330,
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(psuController),
                              child: Stack(children: [
                                sysPsu == null
                                    ? Image.asset(
                                        "assets/animated/screen_no_parts.png",
                                        fit: BoxFit.fill,
                                      )
                                    : Positioned(
                                        bottom: 0,
                                        left: 20,
                                        child: Image.asset(
                                          sysPsu!,
                                          scale: 2.5,
                                          fit: BoxFit.none,
                                        ),
                                      ),
                              ]),
                            ),
                          ),
                          //--> Animated component for the System Case
                          SizedBox(
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(caseController),
                              child: SizedBox(
                                  height: 350,
                                  width: 330,
                                  child: Stack(
                                    children: [
                                      sysImg == null
                                          ? Image.asset(
                                              // ! THIS IS TESTING BACK TO BACK CODE LATER
                                              "assets/animated/screen_no_parts.png",
                                              fit: BoxFit.fill,
                                            )
                                          : Image.asset(
                                              sysImg!,
                                              fit: BoxFit.cover,
                                            ),
                                    ],
                                  )),
                            ),
                          ),
                          //--> for the Motherboard / Main Board
                          SizedBox(
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(moboController),
                              child: SizedBox(
                                height: 350,
                                width: 330,
                                child: Stack(children: [
                                  sysMotherboard == null
                                      ? Image.asset(
                                          "assets/animated/screen_no_parts.png",
                                          fit: BoxFit.fill,
                                        )
                                      : Positioned(
                                          bottom: 110,
                                          right: 110,
                                          child: Image.asset(
                                            sysMotherboard!,
                                            scale: 1.8,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                ]),
                              ),
                            ),
                          ),
                          //--> for the Processor/CPU
                          SizedBox(
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(cpuController),
                              child: SizedBox(
                                  height: 350,
                                  width: 330,
                                  child: Stack(
                                    children: [
                                      sysProcessor == null
                                          ? Image.asset(
                                              "assets/animated/screen_no_parts.png",
                                              fit: BoxFit.fill,
                                            )
                                          : Positioned(
                                              top: cpuX1,
                                              right: cpuX2,
                                              child: Image.asset(
                                                sysProcessor!,
                                                scale: 8,
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                    ],
                                  )),
                            ),
                          ),
                          //--> for the Memory/ RAM
                          SizedBox(
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(ramController),
                              child: SizedBox(
                                  height: 350,
                                  width: 330,
                                  child: Stack(
                                    children: [
                                      sysMemory == null
                                          ? Image.asset(
                                              "assets/animated/screen_no_parts.png",
                                              fit: BoxFit.fill,
                                            )
                                          : Positioned(
                                              top: 55,
                                              right: 92,
                                              child: Image.asset(
                                                sysMemory!,
                                                scale: 3.1,
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                    ],
                                  )),
                            ),
                          ),
                          //--> for the Storage/ ROM
                          SizedBox(
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(romController),
                              child: SizedBox(
                                  height: 350,
                                  width: 330,
                                  child: Stack(
                                    children: [
                                      sysStorage == null
                                          ? Image.asset(
                                              "assets/animated/screen_no_parts.png",
                                              fit: BoxFit.fill,
                                            )
                                          : Positioned(
                                              top: 120,
                                              right: 55,
                                              child: Image.asset(
                                                sysStorage!,
                                                scale: 4.4,
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                    ],
                                  )),
                            ),
                          ),

                          //--> for the Graphics Card/GPU
                          SizedBox(
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(gpuController),
                              child: SizedBox(
                                  height: 350,
                                  width: 330,
                                  child: Stack(
                                    children: [
                                      sysGpu == null
                                          ? Image.asset(
                                              "assets/animated/screen_no_parts.png",
                                              fit: BoxFit.fill,
                                            )
                                          : Positioned(
                                              top: 90,
                                              right: 135,
                                              child: Image.asset(
                                                sysGpu!,
                                                scale: 2,
                                                fit: BoxFit.none,
                                              ))
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 175,
                  child: ElevatedButton.icon(
                    //-->button to select item_types
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: Color.fromARGB(255, 37, 43, 44)),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TypesOfItems()));
                    },
                    icon: const Icon(Icons.computer),
                    label: const Text(
                      "Computer Parts",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 175,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: Color.fromARGB(255, 37, 43, 44)),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: _openEndDrawer,
                    icon: const Icon(
                      Icons.shopping_cart,
                    ),
                    label: const Text(
                      "Inventory",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/animated/BlueInfo.jpg",
                        ),
                        opacity: .3,
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white60,
                        child: const Text(
                          "SYSTEM UNIT PARTS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              children: [
                                TextSpan(text: "System Unit Case: ", children: [
                                  TextSpan(
                                    text: systemUnitCase == null
                                        ? "\n"
                                        : "$systemUnitCase\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                                TextSpan(text: "Motherboard: ", children: [
                                  TextSpan(
                                    text: infoMotherboard == null
                                        ? "\n"
                                        : "$infoMotherboard\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                                TextSpan(text: "Processor: ", children: [
                                  TextSpan(
                                    text: infoProcessor == null
                                        ? "\n"
                                        : "$infoProcessor\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                                TextSpan(text: "Memory: ", children: [
                                  TextSpan(
                                    text: infoRAM == null ? "\n" : "$infoRAM\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                                TextSpan(text: "Storage: ", children: [
                                  TextSpan(
                                    text: infoStorage == null
                                        ? "\n"
                                        : "$infoStorage\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                                TextSpan(text: "Power Supply: ", children: [
                                  TextSpan(
                                    text: infoPSU == null ? "\n" : "$infoPSU\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                                TextSpan(text: "Graphics Card: ", children: [
                                  TextSpan(
                                    text: infoGPU == null ? "\n" : "$infoGPU\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        backgroundColor: Colors.white12),
                                  )
                                ]),
                              ],
                            )),
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "Build Price: \u20B1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    backgroundColor: Colors.white12),
                              ),
                              TextSpan(
                                text: "$totalT",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    backgroundColor: Colors.white12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if (color5 == Colors.greenAccent) {
                              priceGpu == null
                                  ? priceGpu = 0.0
                                  : priceGpu = priceGpu;
                              totalPrice();
                            } else {
                              return;
                            }
                          },
                          child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: finalBtn,
                                  border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 15, 37, 38),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: const Center(
                                  child: Text(
                                "View Price",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    backgroundColor: Colors.white12),
                              ))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        endDrawer: const Drawer(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          width: 300,
          child: SafeArea(
            child: EndDrawer(),
          ),
        ),
      );
//modal area here for the tutorial
  Future<void> tutorialModal(BuildContext context) {
    return showModalBottomSheet<void>(
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                color: Colors.greenAccent,
                height: 30,
                width: 50,
                child: Text(
                  "How it Works!",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .5,
                child: Row(
                  children: [
                    Expanded(
                        child:
                            Image.asset("assets/animated/computerparts.png")),
                    Expanded(
                        child: Text(
                      'To Select Computer Parts press Button "Computer Parts"',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
              ),
              //for transition
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .5,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset("assets/animated/itembuttons.png")),
                    Expanded(
                        child: Text(
                      'After selecting Computer Parts, these are the buttons to play the item transitions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
              ),
              //active transition
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .5,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset("assets/animated/itembuttons2.png")),
                    Expanded(
                        child: Text(
                      'When you tap the button once, it will turn green, indicating that it is active and the item transition will play.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
              ),
              //reverse transition
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .5,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset("assets/animated/itembuttons2.png")),
                    Expanded(
                        child: Text(
                      'And press and hold the button to reverse the transition, and it will back to color white',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
              ),
              //inventory
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .5,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset("assets/animated/inventory.png")),
                    Expanded(
                        child: Text(
                      'Inventory will open the side drawer and display all of the computer parts you selected.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void resetAll() {
    setState(() {
      priceSyscase = 0.0;
      priceMobo = 0.0;
    });
  }

  void totalPrice() {
    List<double> list = [
      priceSyscase!,
      priceMobo!,
      priceCpu!,
      priceRam!,
      priceRom!,
      pricePsu!,
      priceGpu!
    ];
    double total = 0.0;

    for (var item in list) {
      total = total + item;
    }
    setState(() {
      totalT = total.toStringAsFixed(2);
    });
  }

  // --> get functions here!!
  //--> Processor getShrPref
  void getSysCase() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysImg = pref.getString('image');
    systemUnitCase = pref.getString('sysCaseName');
    priceSyscase = pref.getDouble('sysCase_price');
    setState(() {});
  }

  //--> Processor getShrPref
  void getSysProcessor() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysProcessor = pref.getString('cpu_image');
    cpuX1 = pref.getDouble('cpu_x1');
    cpuX2 = pref.getDouble('cpu_x2');
    infoProcessor = pref.getString('cpu');
    priceCpu = pref.getDouble('sysCpu_price');
    setState(() {});
  }

  //--> GPU getShrPref
  void getSysGpu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysGpu = pref.getString('gpu_image');
    infoGPU = pref.getString('gpu');
    setState(() {
      priceGpu == null
          ? priceGpu = 0.0
          : priceGpu = pref.getDouble('sysGpu_price');
    });
  }

  //--> Main Board getShrPref
  void getSysMobo() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysMotherboard = pref.getString('mobo_image');
    infoMotherboard = pref.getString('mobo');

    setState(() {
      priceMobo = pref.getDouble('sysMobo_price');
    });
  }

  //--> Power Supply getShrPref
  void getSysPsu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysPsu = pref.getString('psu_image');
    infoPSU = pref.getString('psu');
    pricePsu = pref.getDouble('sysPsu_price');
    setState(() {});
  }

  //--> Memory getShrPref
  void getSysRam() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysMemory = pref.getString('ram_image');
    infoRAM = pref.getString('ram');
    priceRam = pref.getDouble('sysRam_price');
    setState(() {});
  }

  //--> Storage getShrPref
  void getSysRom() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysStorage = pref.getString('rom_image');
    infoStorage = pref.getString('rom');
    priceRom = pref.getDouble('sysRom_price');
    setState(() {});
  }

  // --> get function above!!
  void resetAnimation() {
    animation = Matrix4Tween(
      begin: sndcontroller.value,
      end: Matrix4.identity(),
    ).animate(CurvedAnimation(
        parent: animationController, curve: Curves.bounceInOut));
    animationController.forward(from: 0);
  }
}

class Top extends StatelessWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Text(
        "INVENTORY",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
