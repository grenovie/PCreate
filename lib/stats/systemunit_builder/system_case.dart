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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorLight,
          title: const Text("System Case")),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/BGgrey.jpg"),
        //       fit: BoxFit.fitHeight,
        //       opacity: 1),
        // ),
        color: const Color.fromARGB(255, 31, 31, 31),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: systemcase.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => ItemCard(
                  systemCase: systemcase[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsSystemCase(
                                systemcase: systemcase[index],
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
