import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/stats/systemunit_builder/graphics_card.dart';
import 'package:test1/stats/systemunit_builder/memory.dart';
import 'package:test1/stats/systemunit_builder/motherboard.dart';
import 'package:test1/stats/systemunit_builder/power_suppy.dart';
import 'package:test1/stats/systemunit_builder/processor.dart';
import 'package:test1/stats/systemunit_builder/storage.dart';
import 'package:test1/stats/systemunit_builder/system_case.dart';

class TypesOfItems extends StatefulWidget {
  const TypesOfItems({Key? key}) : super(key: key);

  @override
  State<TypesOfItems> createState() => _TypesOfItemsState();
}

class _TypesOfItemsState extends State<TypesOfItems> {
  @override
  void initState() {
    getDoneSystemCase();
    getDoneCpu();
    getDoneMotherboard();
    getDoneRam();
    getDoneRom();
    getDonePsu();
    getDoneGpu();
    super.initState();
  }

  Color darkgrey = Color.fromRGBO(46, 53, 61, 1);
  Color green100 = Colors.green.shade100;
  Color greenAccent = Colors.greenAccent;
  Color blue = Color.fromARGB(255, 68, 211, 255);
  Color blacktxt = Colors.black;
  Color bluetxt = Color.fromARGB(255, 68, 211, 255);

  bool? isDone1, isDone2, isDone3, isDone4, isDone5, isDone6, isDone7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(45, 53, 61, 1),
            image: DecorationImage(
              alignment: Alignment(-.5, -3),
              image: AssetImage("assets/testBGcase.png"),
              fit: BoxFit.none,
              opacity: .2,
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "COMPUTER \n PARTS",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Processor()))
                        .then((value) {
                      if (value == true) {
                        getDoneCpu();
                      }
                    });
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone3 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone3 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/cpu.png")),
                      Expanded(
                          child: Text("Processor CPU",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone3 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Motherboard()))
                        .then((value) {
                      if (value == true) {
                        getDoneMotherboard();
                      }
                    });
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone2 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone2 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child:
                              Image.asset("assets/item_types/motherboard.png")),
                      Expanded(
                          child: Text("Motherboard",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone2 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Memory()))
                        .then((value) {
                      if (value == true) {
                        getDoneRam();
                      }
                    });
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone4 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone4 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset("assets/item_types/memory.png")),
                      Expanded(
                          child: Text("Memory RAM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone4 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Storage()))
                        .then((value) {
                      if (value == true) {
                        getDoneRom();
                      }
                    });
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone5 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone5 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/hdd.png")),
                      Expanded(
                          child: Text("Storage HDD/SSD",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone5 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PowerSupply()))
                        .then((value) {
                      if (value == true) {
                        getDonePsu();
                      }
                    });
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone6 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone6 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/psu.png")),
                      Expanded(
                          child: Text("Power Supply",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone6 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GrapchicsCard()))
                        .then((value) {
                      if (value == true) {
                        getDoneGpu();
                      }
                    });
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone7 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone7 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/gpu.png")),
                      Expanded(
                          child: Text("Graphics Card GPU",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone7 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SystemCase()))
                        .then((value) {
                      if (value == true) {
                        getDoneSystemCase();
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDone1 == true ? green100 : darkgrey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: isDone1 == true ? greenAccent : blue),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/BGcase.png")),
                      Expanded(
                          child: Text("System Case",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isDone1 == true ? blacktxt : bluetxt))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getDoneSystemCase() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone1 = pref.getBool('isDoneSystemCase');
    setState(() {});
  }

  void getDoneMotherboard() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone2 = pref.getBool('isDoneMotherboard');
    setState(() {});
  }

  void getDoneCpu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone3 = pref.getBool('isDoneCpu');
    setState(() {});
  }

  void getDoneRam() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone4 = pref.getBool('isDoneRam');
    setState(() {});
  }

  void getDoneRom() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone5 = pref.getBool('isDoneRom');
    setState(() {});
  }

  void getDonePsu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone6 = pref.getBool('isDonePsu');
    setState(() {});
  }

  void getDoneGpu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDone7 = pref.getBool('isDoneGpu');
    setState(() {});
  }
}
