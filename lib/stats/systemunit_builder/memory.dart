import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_memory.dart';
import 'package:test1/details_su_builder/details_system_ram/details_memory.dart';
import 'package:test1/details_su_builder/details_system_ram/itemcard_memory.dart';

class Memory extends StatefulWidget {
  const Memory({Key? key}) : super(key: key);

  @override
  State<Memory> createState() => _MemoryState();
}

class _MemoryState extends State<Memory> {
  static List<ListMemory> searched = memory;
  String? speed;
  @override
  void initState() {
    super.initState();
    getSocket();
  }

  void updateList(String value) {
    setState(() {
      searched = memory
          .where((element) =>
              element.speed.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void updateListSearch(String value) {
    setState(() {
      searched = memory
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
        title: const Text("Memory RAM"),
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
                  hintText: "Search for Memory",
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
                      itemBuilder: (context, index) => MemoryItemCard(
                        systemMemory: searched[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsMemory(
                                      systemMemory: searched[index],
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
    speed = pref.getString('compatible_ddr');
    setState(() {
      updateList(speed == null ? "" : speed!);
    });

    setState(() {});
  }
}
