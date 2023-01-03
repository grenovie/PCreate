import 'package:flutter/material.dart';
import 'package:test1/data/list_gpu.dart';
import 'package:test1/details_su_builder/details_system_gpu/details_power_graphics.dart';
import 'package:test1/details_su_builder/details_system_gpu/itemcard_graphics.dart';

class GrapchicsCard extends StatefulWidget {
  const GrapchicsCard({Key? key}) : super(key: key);

  @override
  State<GrapchicsCard> createState() => _GrapchicsCardState();
}

class _GrapchicsCardState extends State<GrapchicsCard> {
  static List<ListGraphicsCard> searched = graphicsCard;
  @override
  void initState() {
    super.initState();
  }

  void updateList(String value) {
    setState(() {
      searched = graphicsCard
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void updateListSearchNew() {
    searched = graphicsCard.where((element) => element.price > 0.0).toList();
    setState(() {
      searched = searched..sort((a, b) => a.price.compareTo(b.price));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                updateListSearchNew();
              },
              icon: Icon(
                Icons.sort,
                color: Colors.white,
              ))
        ],
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Graphics_Card GPU"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 31, 31, 31),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  hintText: "Search for Graphics Card",
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.black),
              onChanged: (value) => updateList(value),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: searched.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => GraphicsItemCard(
                  systemGraphics: searched[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailGraphics(
                                systemGraphics: searched[index],
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
