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
            "Graphics Card",
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
                            systemGraphics.image,
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
