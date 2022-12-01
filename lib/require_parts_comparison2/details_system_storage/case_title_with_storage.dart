import 'package:flutter/material.dart';
import 'package:test1/data/list_storage.dart';

class CaseTitleWithStorage extends StatelessWidget {
  const CaseTitleWithStorage({
    Key? key,
    required this.systemStorage,
  }) : super(key: key);

  final ListStorage systemStorage;

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
            systemStorage.name,
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
                        text: "\u20B1${systemStorage.price}",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                systemStorage.image,
                fit: BoxFit.fill,
              ))
            ],
          )
        ],
      ),
    );
  }
}
