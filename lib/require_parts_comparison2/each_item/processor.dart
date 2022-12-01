import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';
import 'package:test1/require_parts_comparison2/details_system_cpu/details_processor.dart';
import 'package:test1/require_parts_comparison2/details_system_cpu/itemcard_processor.dart';

class Processor extends StatelessWidget {
  const Processor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Processors"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 34, 34, 34),
          // image: DecorationImage(
          //     image: AssetImage("assets/BGgrey.jpg"),
          //     fit: BoxFit.fitHeight,
          //     opacity: 1),
        ),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: processor.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => ProcessorItemCard(
                  systemProcessor: processor[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsProcessor(
                                systemProcessor: processor[index],
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
