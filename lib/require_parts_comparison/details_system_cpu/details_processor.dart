import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/require_parts_comparison/details_system_cpu/body_system_processor.dart';

class DetailsProcessor extends StatefulWidget {
  final ListProcessor systemProcessor;

  const DetailsProcessor({Key? key, required this.systemProcessor})
      : super(key: key);

  @override
  State<DetailsProcessor> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailsProcessor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodyProcessor(
        systemProcessor: widget.systemProcessor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setSysProcessor(
              widget.systemProcessor.name, widget.systemProcessor.image);
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
      title: Text(widget.systemProcessor.name),
    );
  }

  Future<void> setSysProcessor(caseName, imageValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("compare_processor_name", caseName);
    pref.setString("compare_pcImage_part1", imageValue);
  }
}
