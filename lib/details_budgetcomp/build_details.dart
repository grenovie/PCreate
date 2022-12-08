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
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/BGbudget.jpg"))),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              child: Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Center(
                  child: Image.asset(
                    "assets/animated/Platform1.png",
                    fit: BoxFit.none,
                    scale: 7,
                  ),
                ),
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
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .45,
                  color: Colors.black38,
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 27)),
                          Image.asset(
                            widget.bdgtcomputer.image1,
                            scale: 4.5,
                          ),
                          Image.asset(widget.bdgtcomputer.image2, scale: 4.5),
                          Image.asset(widget.bdgtcomputer.image3, scale: 4.5),
                          Image.asset(widget.bdgtcomputer.image4, scale: 4.5),
                          Image.asset(widget.bdgtcomputer.image5, scale: 4.5),
                          Image.asset(widget.bdgtcomputer.image6, scale: 4.5),
                        ],
                      )),
                      SizedBox(
                        width: 250,
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "THE System Unit SPECS\n\n",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  backgroundColor: Colors.white12),
                              children: [
                                TextSpan(
                                    text:
                                        "1.${widget.bdgtcomputer.processor}\n\n",
                                    style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                TextSpan(
                                    text: "2.${widget.bdgtcomputer.mobo}\n\n"),
                                TextSpan(
                                    text: "3.${widget.bdgtcomputer.ram}\n\n",
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis)),
                                TextSpan(
                                    text:
                                        "4.${widget.bdgtcomputer.storage}\n\n"),
                                TextSpan(
                                    text: "5.${widget.bdgtcomputer.gpu}\n\n"),
                                TextSpan(
                                    text:
                                        "6.${widget.bdgtcomputer.chasis}\n\n"),
                                TextSpan(
                                    text:
                                        "7.Price: \u20B1 ${myFormat.format(widget.bdgtcomputer.price)}"),
                              ]),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 30,
                        ),
                      ),
                    ],
                  ),
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
