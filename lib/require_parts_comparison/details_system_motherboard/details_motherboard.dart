import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/require_parts_comparison/details_system_motherboard/body_system_motherboard.dart';

class DetailsSystemMotherboard extends StatefulWidget {
  final ListMotherboard systemMotherboard;

  const DetailsSystemMotherboard({Key? key, required this.systemMotherboard})
      : super(key: key);

  @override
  State<DetailsSystemMotherboard> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailsSystemMotherboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodySystemMobo(
        systemMotherboard: widget.systemMotherboard,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! This area for getting the image for the image_transition
          setSysMobo(
            widget.systemMotherboard.name,
            widget.systemMotherboard.image,
            widget.systemMotherboard.socket,
            widget.systemMotherboard.form,
            widget.systemMotherboard.maxMemory,
            widget.systemMotherboard.memorySlot,
            widget.systemMotherboard.price,
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
      title: Text(widget.systemMotherboard.name),
    );
  }

  Future<void> setSysMobo(caseValue, imageValue, socket, formOf, maxMemory,
      memorySlot, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_info1P1', "Name: $caseValue");
    pref.setString('compare_pcImage_part1', imageValue);
    pref.setString('compare_info2P1', "Socket: $socket");
    pref.setString('compare_info3P1', "Form: $formOf");
    pref.setString('compare_info4P1', "MaxMemory: $maxMemory");
    pref.setString('compare_info5P1', "Memory Slot: $memorySlot");
    pref.setString('compare_info6P1', "Price: \u20B1$price");
    pref.setString('compare_info7P1', " ");
    pref.setString('compare_info8P1', " ");
    pref.setString('compare_info9P1', " ");
  }
}
