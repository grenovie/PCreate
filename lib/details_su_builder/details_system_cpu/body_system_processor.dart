import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';
import 'package:test1/details_su_builder/details_system_cpu/case_title_with_procesor.dart';

class BodyProcessor extends StatelessWidget {
  final ListProcessor systemProcessor;

  const BodyProcessor({Key? key, required this.systemProcessor})
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
                              text: "Name: ${systemProcessor.name}\n\n",
                              style: const TextStyle(
                                  backgroundColor: Colors.white12,
                                  color: Colors.white,
                                  fontSize: 23),
                              children: [
                                TextSpan(
                                    text:
                                        "Socket: ${systemProcessor.socket}\n\n"),
                                TextSpan(
                                    text:
                                        "Integ Graphics: ${systemProcessor.integrateGraphics}\n\n"),
                                TextSpan(
                                    text:
                                        "CoreCount: ${systemProcessor.coreCount}\n\n"),
                                TextSpan(
                                    text:
                                        "CoreClock: ${systemProcessor.coreClock}\n\n"),
                                TextSpan(
                                    text:
                                        "Price: \u20B1${systemProcessor.price}\n\n"),
                              ]))
                    ],
                  ),
                ),
              ),
              CaseTitleWitProcessor(systemProcessor: systemProcessor),
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
