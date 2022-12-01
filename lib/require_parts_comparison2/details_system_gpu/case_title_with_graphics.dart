import 'package:flutter/material.dart';
import 'package:test1/data/list_gpu.dart';

class CaseTitleWithGraphics extends StatelessWidget {
  const CaseTitleWithGraphics({
    Key? key,
    required this.systemGraphics,
  }) : super(key: key);

  final ListGraphicsCard systemGraphics;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "System Unit Case",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            systemGraphics.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\u20B1${systemGraphics.price}",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                systemGraphics.image,
                fit: BoxFit.fill,
              ))
            ],
          )
        ],
      ),
    );
  }
}
