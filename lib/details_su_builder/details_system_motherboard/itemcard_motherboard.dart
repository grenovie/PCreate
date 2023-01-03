import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test1/data/list_motherboard.dart';

class MoboItemCard extends StatefulWidget {
  final ListMotherboard systemMotherboard;
  final VoidCallback press;
  const MoboItemCard({
    Key? key,
    required this.systemMotherboard,
    required this.press,
  }) : super(key: key);

  @override
  State<MoboItemCard> createState() => _ItemCardState();
}

NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

class _ItemCardState extends State<MoboItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 180,
                  width: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/animated/ItemCardBG2.jpg"),
                        fit: BoxFit.none,
                        scale: 11),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Image.asset(
                    widget.systemMotherboard.image,
                  ),
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 121, 121, 121),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.systemMotherboard.name,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "\u20B1${myFormat.format(widget.systemMotherboard.price)}",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
