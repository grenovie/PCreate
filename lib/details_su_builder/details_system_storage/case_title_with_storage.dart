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
            "Storage",
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
                            systemStorage.image,
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
