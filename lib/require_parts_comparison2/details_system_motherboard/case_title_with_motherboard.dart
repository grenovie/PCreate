import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';

class CaseTitleWithMobo extends StatelessWidget {
  const CaseTitleWithMobo({
    Key? key,
    required this.systemMotherboard,
  }) : super(key: key);

  final ListMotherboard systemMotherboard;

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
            systemMotherboard.name,
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
                        text: "\u20B1${systemMotherboard.price}",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                systemMotherboard.image,
                fit: BoxFit.fill,
              ))
            ],
          )
        ],
      ),
    );
  }
}
