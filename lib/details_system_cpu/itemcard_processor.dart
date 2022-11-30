import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';

class ProcessorItemCard extends StatefulWidget {
  final ListProcessor systemProcessor;
  final VoidCallback press;
  const ProcessorItemCard({
    Key? key,
    required this.systemProcessor,
    required this.press,
  }) : super(key: key);

  @override
  State<ProcessorItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ProcessorItemCard> {
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
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 15, 15, 15)
                            .withOpacity(0.8),
                        offset: const Offset(10, 10),
                        blurRadius: 8,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Image.asset(
                    widget.systemProcessor.image,
                  ),
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 15, 15, 15)
                            .withOpacity(0.8),
                        offset: const Offset(10, 10),
                        blurRadius: 8,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.systemProcessor.name,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "\u20B1${widget.systemProcessor.price}",
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
