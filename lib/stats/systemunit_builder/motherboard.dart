import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/details_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/itemcard_motherboard.dart';

class Motherboard extends StatefulWidget {
  const Motherboard({Key? key}) : super(key: key);

  @override
  State<Motherboard> createState() => _MotherboardState();
}

class _MotherboardState extends State<Motherboard> {
  String? socket;
  static List<ListMotherboard> searched = motherboard;
  @override
  void initState() {
    super.initState();
  }

  void updateList(String value) {
    setState(() {
      searched = motherboard
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Motherboards"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 31, 31, 31),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  hintText: "Search for Motherboard",
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.black),
              onChanged: (value) => updateList(value),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: searched.isEmpty
                  ? const Center(
                      child: Text(
                          "Sorry No result found, developers will input more of this items",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)))
                  : GridView.builder(
                      itemCount: searched.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: 35,
                              crossAxisSpacing: 20),
                      itemBuilder: (context, index) => MoboItemCard(
                        systemMotherboard: searched[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsSystemMotherboard(
                                      systemMotherboard: searched[index],
                                    ))),
                      ),
                    ),
            ))
          ],
        ),
      ),
    );
  }
}
