import 'package:flutter/material.dart';
import 'package:test1/data/list_gpu.dart';
import 'package:test1/require_parts_comparison2/details_system_gpu/case_title_with_graphics.dart';

class BodyGraphics extends StatelessWidget {
  final ListGraphicsCard systemGraphics;

  const BodyGraphics({Key? key, required this.systemGraphics})
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
                              text: "Name: ${systemGraphics.name}\n\n",
                              style: const TextStyle(
                                  backgroundColor: Colors.white12,
                                  color: Colors.white,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text:
                                        "Chipset: ${systemGraphics.chipset}\n\n"),
                                TextSpan(
                                    text: "Color: ${systemGraphics.color}\n\n"),
                                TextSpan(
                                    text:
                                        "boostClock: ${systemGraphics.boostClock}\n\n"),
                                TextSpan(
                                    text:
                                        "coreClock: ${systemGraphics.coreClock}\n\n"),
                                TextSpan(
                                    text:
                                        "Memory: ${systemGraphics.memory}\n\n"),
                                TextSpan(
                                    text:
                                        "Price: \u20B1${systemGraphics.price}\n\n"),
                              ]))
                    ],
                  ),
                ),
              ),
              CaseTitleWithGraphics(systemGraphics: systemGraphics),
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
