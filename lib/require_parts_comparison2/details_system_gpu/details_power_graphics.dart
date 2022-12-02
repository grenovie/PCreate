import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_gpu.dart';
import 'package:test1/require_parts_comparison2/details_system_gpu/body_system_graphics.dart';

class DetailGraphics extends StatefulWidget {
  final ListGraphicsCard systemGraphics;

  const DetailGraphics({Key? key, required this.systemGraphics})
      : super(key: key);

  @override
  State<DetailGraphics> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailGraphics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodyGraphics(
        systemGraphics: widget.systemGraphics,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setSysGpu(
            widget.systemGraphics.name,
            widget.systemGraphics.image,
            widget.systemGraphics.chipset,
            widget.systemGraphics.memory,
            widget.systemGraphics.coreClock,
            widget.systemGraphics.boostClock,
            widget.systemGraphics.color,
            widget.systemGraphics.length,
            widget.systemGraphics.price,
          );
          var snackBar = SnackBar(
              backgroundColor: Colors.green[400],
              content: const Text('Succesfully added to Inventory'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context)
            ..pop(true)
            ..pop(true)
            ..pop(true);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorLight,
      title: Text(widget.systemGraphics.name),
    );
  }

  Future<void> setSysGpu(caseValue, imageValue, chipset, memory, coreClock,
      boostClock, color, length, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_info1P2', "Name: $caseValue");
    pref.setString('compare_pcImage_part2', imageValue);
    pref.setString('compare_info2P2', "Chipset: $chipset");
    pref.setString('compare_info3P2', "Memory: $memory");
    pref.setString('compare_info4P2', "CoreClock: $coreClock");
    pref.setString('compare_info5P2', "BoostClock: $boostClock");
    pref.setString('compare_info6P2', "Color: $color");
    pref.setString('compare_info7P2', "Length: $length");
    pref.setString('compare_info8P2', "Price: \u20B1$price");
  }
}
