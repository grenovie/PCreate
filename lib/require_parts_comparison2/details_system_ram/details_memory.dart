import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_memory.dart';
import 'package:test1/require_parts_comparison2/details_system_ram/body_system_memory.dart';

class DetailsMemory extends StatefulWidget {
  final ListMemory systemMemory;

  const DetailsMemory({Key? key, required this.systemMemory}) : super(key: key);

  @override
  State<DetailsMemory> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailsMemory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodyMemory(
        systemMemory: widget.systemMemory,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setSysRam(
            widget.systemMemory.name,
            widget.systemMemory.image,
            widget.systemMemory.speed,
            widget.systemMemory.firstWordLatency,
            widget.systemMemory.casLatency,
            widget.systemMemory.price,
          );
          var snackBar = SnackBar(
              duration: Duration(milliseconds: 300),
              backgroundColor: Colors.green[400],
              content: const Text('Done'));
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
      title: Text(widget.systemMemory.name),
    );
  }

  Future<void> setSysRam(
      caseValue, imageValue, speed, latency, casLatency, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_info1P2', "Name: $caseValue");
    pref.setString('compare_pcImage_part2', imageValue);
    pref.setString('compare_info2P2', "Speed: $speed");
    pref.setString('compare_info3P2', "FirstWordLatency: $latency");
    pref.setString('compare_info4P2', "CasLatency: $casLatency");
    pref.setString('compare_info5P2', "Price: \u20B1$price");
    pref.setString('compare_info6P2', " ");
    pref.setString('compare_info7P2', " ");
    pref.setString('compare_info8P2', " ");
    pref.setString('compare_info9P2', " ");
  }
}
