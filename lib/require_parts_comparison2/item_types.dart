import 'package:flutter/material.dart';
import 'package:test1/require_parts_comparison2/each_item/graphics_card.dart';
import 'package:test1/require_parts_comparison2/each_item/memory.dart';
import 'package:test1/require_parts_comparison2/each_item/motherboard.dart';
import 'package:test1/require_parts_comparison2/each_item/power_suppy.dart';
import 'package:test1/require_parts_comparison2/each_item/processor.dart';
import 'package:test1/require_parts_comparison2/each_item/storage.dart';
import 'package:test1/require_parts_comparison2/each_item/system_case.dart';

class TypesOfItemsCompare2 extends StatelessWidget {
  const TypesOfItemsCompare2({Key? key}) : super(key: key);

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
              opacity: .4,
              fit: BoxFit.none,
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
                            builder: (context) => const SystemCase()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/BGcase.png")),
                      const Expanded(
                          child: Text("System Case",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
                            builder: (context) => const Motherboard()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child:
                              Image.asset("assets/item_types/motherboard.png")),
                      const Expanded(
                          child: Text("Motherboard",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
                            builder: (context) => const Processor()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/cpu.png")),
                      const Expanded(
                          child: Text("Processor CPU",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
                            builder: (context) => const Memory()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset("assets/item_types/memory.png")),
                      const Expanded(
                          child: Text("Memory RAM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
                            builder: (context) => const Storage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/hdd.png")),
                      const Expanded(
                          child: Text("Storage HDD/SSD",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
                            builder: (context) => const PowerSupply()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/psu.png")),
                      const Expanded(
                          child: Text("Power Supply",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
                            builder: (context) => const GrapchicsCard()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 53, 61, 1),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color.fromARGB(255, 68, 211, 255)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/item_types/gpu.png")),
                      const Expanded(
                          child: Text("Graphics Card GPU",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 68, 211, 255)))),
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
}
