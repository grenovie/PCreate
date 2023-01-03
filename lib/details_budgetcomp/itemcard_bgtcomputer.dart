import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test1/data/list_budget.dart';

class BgtComputer extends StatefulWidget {
  final ListBudget bgcomputer;
  final VoidCallback press;
  const BgtComputer({
    Key? key,
    required this.bgcomputer,
    required this.press,
  }) : super(key: key);

  @override
  State<BgtComputer> createState() => _ItemCardState();
}

NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

class _ItemCardState extends State<BgtComputer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              //customize this part
              children: [
                Positioned(
                  bottom: 30,
                  left: 6,
                  child: Center(
                    child: Image.asset(
                      "assets/animated/Platform1.png",
                      scale: 9,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    widget.bgcomputer.image,
                    scale: 2.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromARGB(255, 13, 46, 87)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "Build: ${widget.bgcomputer.processor}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: const []),
                            overflow: TextOverflow.ellipsis,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text:
                                    "\nPrice: \u20B1${widget.bgcomputer.price}",
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
