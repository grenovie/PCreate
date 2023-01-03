import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:test1/require_parts_comparison2/details_system_motherboard/case_title_with_motherboard.dart';

class BodySystemMobo extends StatelessWidget {
  final ListMotherboard systemMotherboard;

  const BodySystemMobo({Key? key, required this.systemMotherboard})
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
                              text: "Name: ${systemMotherboard.name}\n\n",
                              style: const TextStyle(
                                  backgroundColor: Colors.white12,
                                  color: Colors.white,
                                  fontSize: 23),
                              children: [
                                TextSpan(
                                    text:
                                        "Socket Type: ${systemMotherboard.socket}\n\n"),
                                TextSpan(
                                    text:
                                        "Form: ${systemMotherboard.form}\n\n"),
                                TextSpan(
                                    text:
                                        "Max Memory: ${systemMotherboard.maxMemory}\n\n"),
                                TextSpan(
                                    text:
                                        "Memory Slot: ${systemMotherboard.memorySlot}\n\n"),
                                TextSpan(
                                    text:
                                        "Price: \u20B1${systemMotherboard.price}\n\n"),
                              ]))
                    ],
                  ),
                ),
              ),
              CaseTitleWithMobo(systemMotherboard: systemMotherboard),
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
