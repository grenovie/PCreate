import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test1/data/list_memory.dart';

import 'case_title_with_memory.dart';

class BodyMemory extends StatelessWidget {
  final ListMemory systemMemory;

  const BodyMemory({Key? key, required this.systemMemory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
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
                  color: Colors.white12,
                  image: DecorationImage(
                      image: AssetImage("assets/animated/details.jpg"),
                      opacity: .4),
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
                              text: "Name: ${systemMemory.name}\n\n",
                              style: const TextStyle(
                                  backgroundColor: Colors.white12,
                                  color: Colors.white,
                                  fontSize: 23),
                              children: [
                                TextSpan(
                                    text: "Speed: ${systemMemory.speed}\n\n"),
                                TextSpan(
                                    text:
                                        "FW Latency: ${systemMemory.firstWordLatency}\n\n"),
                                TextSpan(
                                    text:
                                        "Cas Latency: ${systemMemory.casLatency}\n\n"),
                                TextSpan(
                                    text:
                                        "Modules: ${systemMemory.modules}\n\n"),
                                TextSpan(
                                    text:
                                        "Price: \u20B1${myFormat.format(systemMemory.price)}\n\n"),
                              ]))
                    ],
                  ),
                ),
              ),
              CaseTitleWithMemory(systemMemory: systemMemory),
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
