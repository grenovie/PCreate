import 'package:flutter/material.dart';
import 'package:test1/data/list_storage.dart';
import 'package:test1/require_parts_comparison2/details_system_storage/case_title_with_storage.dart';

class BodyStorage extends StatelessWidget {
  final ListStorage systemStorage;

  const BodyStorage({Key? key, required this.systemStorage}) : super(key: key);

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
                              text: "Name: ${systemStorage.name}\n\n",
                              style: const TextStyle(
                                  backgroundColor: Colors.white12,
                                  color: Colors.white,
                                  fontSize: 23),
                              children: [
                                TextSpan(
                                    text: "Type: ${systemStorage.type}\n\n"),
                                TextSpan(
                                    text:
                                        "Capacity: ${systemStorage.capacity}\n\n"),
                                TextSpan(
                                    text:
                                        "FormFactor: ${systemStorage.formFactor}\n\n"),
                                TextSpan(
                                    text:
                                        "Price: \u20B1${systemStorage.price}\n\n"),
                              ]))
                    ],
                  ),
                ),
              ),
              CaseTitleWithStorage(systemStorage: systemStorage),
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
