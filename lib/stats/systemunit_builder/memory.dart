import 'package:flutter/material.dart';
import 'package:test1/data/list_memory.dart';
import 'package:test1/details_su_builder/details_system_ram/details_memory.dart';
import 'package:test1/details_su_builder/details_system_ram/itemcard_memory.dart';

class Memory extends StatelessWidget {
  const Memory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Memory RAM"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/BGgrey.jpg"),
              fit: BoxFit.fitHeight,
              opacity: 1),
        ),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: memory.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => MemoryItemCard(
                  systemMemory: memory[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsMemory(
                                systemMemory: memory[index],
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
