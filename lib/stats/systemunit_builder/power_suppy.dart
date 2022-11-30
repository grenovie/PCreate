import 'package:flutter/material.dart';
import 'package:test1/data/list_psu.dart';
import 'package:test1/details_system_psu/details_power_supply.dart';

import '../../details_system_psu/itemcard_power_supply.dart';

class PowerSupply extends StatelessWidget {
  const PowerSupply({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Power Supply"),
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
                itemCount: powerSupply.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => PowerSupplyItemCard(
                  systemPowerSupply: powerSupply[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPowerSupply(
                                systemPowerSupply: powerSupply[index],
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
