import 'package:flutter/material.dart';
import 'package:test1/data/list_storage.dart';
import 'package:test1/details_system_storage/details_storage.dart';

import '../../details_system_storage/itemcard_storage.dart';

class Storage extends StatelessWidget {
  const Storage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Storage HDD/SSD"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/BGgrey.jpg"),
              fit: BoxFit.fitHeight,
              opacity: 1),
        ),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: storage.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => StorageItemCard(
                  systemStorage: storage[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailStorage(
                                systemStorage: storage[index],
                              ))),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
