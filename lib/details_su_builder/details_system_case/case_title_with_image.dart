import 'package:flutter/material.dart';
import 'package:test1/data/list_system_case.dart';

class CaseTitleWithImage extends StatelessWidget {
  const CaseTitleWithImage({
    Key? key,
    required this.systemcase,
  }) : super(key: key);

  final ListSystemCase systemcase;

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
            systemcase.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              SizedBox(
                  width: 350,
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -10,
                        left: 20,
                        child: Image.asset(
                          "assets/animated/Platform1.png",
                          scale: 8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Image.asset(
                            systemcase.image,
                            scale: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
