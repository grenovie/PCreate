import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/details_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/itemcard_motherboard.dart';

class Motherboard extends StatefulWidget {
  const Motherboard({Key? key}) : super(key: key);

  @override
  State<Motherboard> createState() => _MotherboardState();
}

class _MotherboardState extends State<Motherboard> {
  static List<ListMotherboard> searched = motherboard;
  String? socket;
  @override
  void initState() {
    super.initState();
    getSocket();
  }

  void updateListNew(String value) {
    setState(() {
      searched = motherboard
          .where((element) =>
              element.socket.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void updateList(String value) {
    setState(() {
      searched = motherboard
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void updateListSearchNew() {
    searched = motherboard.where((element) => element.price > 0.0).toList();
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
          IconButton(
              onPressed: () {
                updateListSearchNew();
              },
              icon: Icon(
                Icons.sort,
                color: Colors.white,
              ))
        ],
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

  void getSocket() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    socket = pref.getString('compatible_socket');
    setState(() {
      updateListNew(socket == null ? "" : socket!);
    });

    setState(() {});
  }
}
