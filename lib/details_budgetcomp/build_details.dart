import 'package:flutter/material.dart';
import 'package:test1/data/list_budget.dart';
import 'package:intl/intl.dart';

class BudgetDetails extends StatefulWidget {
  final ListBudget bdgtcomputer;

  const BudgetDetails({Key? key, required this.bdgtcomputer}) : super(key: key);

  @override
  State<BudgetDetails> createState() => _BudgetDetailsState();
}

NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

class _BudgetDetailsState extends State<BudgetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(140, 82, 161, 1),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              child: Image.asset(
                "assets/builds/platform.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 100,
              top: 70,
              child: Image.asset(
                widget.bdgtcomputer.image,
                scale: 2.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .45,
                  color: Colors.black38,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "THE System Unit SPECS\n\n",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              backgroundColor: Colors.white12),
                          children: [
                            TextSpan(
                                text: "1.${widget.bdgtcomputer.processor}\n\n"),
                            TextSpan(text: "2.${widget.bdgtcomputer.mobo}\n\n"),
                            TextSpan(text: "3.${widget.bdgtcomputer.ram}\n\n"),
                            TextSpan(
                                text: "4.${widget.bdgtcomputer.storage}\n\n"),
                            TextSpan(text: "5.${widget.bdgtcomputer.gpu}\n\n"),
                            TextSpan(
                                text: "6.${widget.bdgtcomputer.chasis}\n\n"),
                            TextSpan(
                                text:
                                    "7.Price: \u20B1 ${myFormat.format(widget.bdgtcomputer.price)}"),
                          ])),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorLight,
      title: Text(widget.bdgtcomputer.processor),
    );
  }
}
