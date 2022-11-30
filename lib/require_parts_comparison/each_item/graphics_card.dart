import 'package:flutter/material.dart';
import 'package:test1/data/list_gpu.dart';
import 'package:test1/require_parts_comparison/details_system_gpu/details_power_graphics.dart';
import 'package:test1/require_parts_comparison/details_system_gpu/itemcard_graphics.dart';

class GrapchicsCard extends StatelessWidget {
  const GrapchicsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Graphics_Card GPU"),
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
                itemCount: graphicsCard.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => GraphicsItemCard(
                  systemGraphics: graphicsCard[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailGraphics(
                                systemGraphics: graphicsCard[index],
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
