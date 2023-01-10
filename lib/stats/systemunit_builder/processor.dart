import 'package:flutter/material.dart';

import 'package:test1/data/list_cpu.dart';
import 'package:test1/details_su_builder/details_system_cpu/details_processor.dart';
import 'package:test1/details_su_builder/details_system_cpu/itemcard_processor.dart';

class Processor extends StatefulWidget {
  const Processor({Key? key}) : super(key: key);

  @override
  State<Processor> createState() => _ProcessorState();
}

class _ProcessorState extends State<Processor> {
  static List<ListProcessor> searched = processor;
  String? socket;
  @override
  void initState() {
    super.initState();
  }

  void updateListSearch(String value) {
    setState(() {
      searched = processor
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void updateListSearchNew() {
    searched = processor.where((element) => element.price > 0.0).toList();
    setState(() {
      searched = searched..sort((a, b) => a.price.compareTo(b.price));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  updateListSearchNew();
                },
                child: Text(
                  "Low to High\nPrice",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          )
        ],
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Processors"),
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
                  hintText: "Search for Processor",
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.black),
              onChanged: (value) => updateListSearch(value),
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
                      itemBuilder: (context, index) => ProcessorItemCard(
                        systemProcessor: searched[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsProcessor(
                                      systemProcessor: searched[index],
                                    ))),
                      ),
                    ),
            ))
          ],
        ),
      ),
    );
  }

  void getFilter() async {}
}
