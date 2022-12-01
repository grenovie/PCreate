import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/details_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/itemcard_motherboard.dart';

class Motherboard extends StatelessWidget {
  const Motherboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Motherboards"),
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
                itemCount: motherboard.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => MoboItemCard(
                  systemMotherboard: motherboard[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsSystemMotherboard(
                                systemMotherboard: motherboard[index],
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
