import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_memory.dart';

import 'body_system_memory.dart';

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
          setSysRam(widget.systemMemory.name, widget.systemMemory.image2D,
              widget.systemMemory.price);
          var snackBar = SnackBar(
              backgroundColor: Colors.green[400],
              content: const Text('Succesfully added to Inventory'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context)
            ..pop()
            ..pop();
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

  Future<void> setSysRam(caseValue, imageValue, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('ram', caseValue);
    pref.setString('ram_image', imageValue);
    pref.setDouble('sysRam_price',
        price = double.parse(price.toString().replaceAll(RegExp(r','), "")));
  }
}
