import 'package:flutter/material.dart';
import 'package:test1/data/list_memory.dart';

class CaseTitleWithMemory extends StatelessWidget {
  const CaseTitleWithMemory({
    Key? key,
    required this.systemMemory,
  }) : super(key: key);

  final ListMemory systemMemory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Memory",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            systemMemory.name,
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
                            systemMemory.image,
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
