import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:test1/details_su_builder/details_system_motherboard/case_title_with_motherboard.dart';

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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    SystemCaseDescription(),
                    //SystemCase Description
                    Text(
                      systemMotherboard.name,
                      style: const TextStyle(color: Colors.black, height: 1.5),
                    ),
                  ],
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
    return Row(
      children: [
        Column(
          children: const [
            Text(
              "System Unit Description",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            )
          ],
        ),
      ],
    );
  }
}
