import 'package:flutter/material.dart';

import '../data/shops.dart';

class ShopsItemCard extends StatefulWidget {
  final ListShops shops;

  const ShopsItemCard({
    Key? key,
    required this.shops,
  }) : super(key: key);

  @override
  State<ShopsItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ShopsItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                height: 230,
                width: 230,
                decoration: BoxDecoration(
                  gradient: const RadialGradient(
                      center: Alignment.topLeft,
                      radius: 1.5,
                      colors: [
                        Color.fromARGB(255, 20, 108, 180),
                        Color.fromARGB(255, 22, 8, 8)
                      ]),
                  border: Border.all(
                      color: const Color.fromARGB(255, 15, 24, 41), width: 2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 15, 15, 15)
                                  .withOpacity(0.8),
                              offset: const Offset(13, 15),
                              blurRadius: 25,
                              spreadRadius: -25,
                            )
                          ],
                        ),
                        child: Image.asset(
                          widget.shops.image,
                          scale: 1.7,
                        ),
                      ),
                    ),
                    Text(
                      widget.shops.shopName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
