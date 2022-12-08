import 'package:flutter/material.dart';
import 'package:test1/data/list_system_case.dart';
import 'package:test1/details_su_builder/details_system_case/details_system_case.dart';
import 'package:test1/details_su_builder/details_system_case/itemcard_system_case.dart';

class SystemCase extends StatefulWidget {
  const SystemCase({Key? key}) : super(key: key);

  @override
  State<SystemCase> createState() => _SystemCaseState();
}

class _SystemCaseState extends State<SystemCase> {
  static List<ListSystemCase> searched = systemcase;
  @override
  void initState() {
    super.initState();
  }

  void updateList(String value) {
    setState(() {
      searched = systemcase
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appBar(context),
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
                  hintText: "Search for System Case",
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
                      itemBuilder: (context, index) => ItemCard(
                        systemCase: searched[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsSystemCase(
                                      systemcase: searched[index],
                                    ))),
                      ),
                    ),
            ))
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorLight,
      title: const Text("System Case"),
    );
  }
}
