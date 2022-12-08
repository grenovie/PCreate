import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/shops.dart';

class ShopsItemCard extends StatefulWidget {
  final ListShops shops;
  // final VoidCallback press;
  const ShopsItemCard({
    Key? key,
    required this.shops,
    // required this.press,
  }) : super(key: key);

  @override
  State<ShopsItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ShopsItemCard> {
  Future<void> launchURL(url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw "nothing";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchURL(widget.shops.link);
      },
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                        width: 290,
                        child: Image.asset("assets/animated/Platform1.png")),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: const RadialGradient(
                            center: Alignment.topLeft,
                            radius: 1.5,
                            colors: [
                              Color.fromARGB(255, 20, 108, 180),
                              Color.fromARGB(255, 22, 8, 8)
                            ]),
                        border: Border.all(
                            color: const Color.fromARGB(255, 15, 24, 41),
                            width: 2),
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
                                scale: 3,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
