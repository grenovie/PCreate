import 'package:flutter/material.dart';
import 'package:test1/data/list_psu.dart';

class PowerSupplyItemCard extends StatefulWidget {
  final ListPowerSupply systemPowerSupply;
  final VoidCallback press;
  const PowerSupplyItemCard({
    Key? key,
    required this.systemPowerSupply,
    required this.press,
  }) : super(key: key);

  @override
  State<PowerSupplyItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<PowerSupplyItemCard> {
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
                    widget.systemPowerSupply.image,
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
                        widget.systemPowerSupply.name,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "\u20B1${widget.systemPowerSupply.price}",
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
