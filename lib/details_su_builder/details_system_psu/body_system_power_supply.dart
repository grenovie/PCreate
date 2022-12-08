import 'package:flutter/material.dart';
import 'package:test1/data/list_psu.dart';

import 'case_title_with_power_supply.dart';

class BodyPowerSupply extends StatelessWidget {
  final ListPowerSupply systemPowerSupply;

  const BodyPowerSupply({Key? key, required this.systemPowerSupply})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                padding: EdgeInsets.only(
                    top: size.height * 0.12, left: 20, right: 20),
                // height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/animated/details.jpg"),
                      opacity: .8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const SystemCaseDescription(),
                      //SystemCase Description
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Name: ${systemPowerSupply.name}\n\n",
                              style: const TextStyle(
                                  backgroundColor: Colors.white12,
                                  color: Colors.white,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text:
                                        "Type: ${systemPowerSupply.type}\n\n"),
                                TextSpan(
                                    text:
                                        "Color: ${systemPowerSupply.color}\n\n"),
                                TextSpan(
                                    text:
                                        "Wattage: ${systemPowerSupply.wattage}\n\n"),
                                TextSpan(
                                    text:
                                        "Rating: ${systemPowerSupply.rating}\n\n"),
                                TextSpan(
                                    text:
                                        "Modular: ${systemPowerSupply.modular}\n\n"),
                                TextSpan(
                                    text:
                                        "Price: \u20B1${systemPowerSupply.price}\n\n"),
                              ]))
                    ],
                  ),
                ),
              ),
              CaseTitleWithPowerSupply(systemPowerSupply: systemPowerSupply),
            ],
          ),
        )
      ]),
    );
  }
}

class SystemCaseDescription extends StatelessWidget {
  const SystemCaseDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "ITEM OTHER INFORMATION",
        style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 23),
      ),
    );
  }
}
