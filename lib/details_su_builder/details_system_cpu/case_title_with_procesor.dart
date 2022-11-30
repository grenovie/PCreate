import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';

class CaseTitleWitProcessor extends StatelessWidget {
  const CaseTitleWitProcessor({
    Key? key,
    required this.systemProcessor,
  }) : super(key: key);

  final ListProcessor systemProcessor;

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
            systemProcessor.name,
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
                        text: "\u20B1${systemProcessor.price}",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                systemProcessor.image,
                fit: BoxFit.fill,
              ))
            ],
          )
        ],
      ),
    );
  }
}
