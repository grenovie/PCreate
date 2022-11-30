import 'package:flutter/material.dart';
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
                  left: 20,
                  child: Center(
                    child: Image.asset(
                      "assets/builds/platform.png",
                      scale: 1.5,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    widget.bgcomputer.image,
                    scale: 2.5,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromARGB(255, 220, 49, 250)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "Build: ${widget.bgcomputer.processor}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      "\nPrice: \u20B1${widget.bgcomputer.price}",
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red))
                            ]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
