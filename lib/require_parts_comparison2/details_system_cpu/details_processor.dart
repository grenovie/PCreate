import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/require_parts_comparison2/details_system_cpu/body_system_processor.dart';

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
            widget.systemProcessor.name,
            widget.systemProcessor.image,
            widget.systemProcessor.socket,
            widget.systemProcessor.coreCount,
            widget.systemProcessor.coreClock,
            widget.systemProcessor.tdp,
            widget.systemProcessor.integrateGraphics,
            widget.systemProcessor.price,
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
      title: Text(widget.systemProcessor.name),
    );
  }

  Future<void> setSysProcessor(caseName, imageValue, socketOF, coreCount,
      coreClock, tdp, integGraphics, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("compare_info1P2", "Name: $caseName");
    pref.setString("compare_pcImage_part2", imageValue);
    pref.setString("compare_info2P2", "Socket: $socketOF");
    pref.setString("compare_info3P2", "Core Count: $coreCount");
    pref.setString("compare_info4P2", "Core Clock: $coreClock");
    pref.setString("compare_info5P2", "TDP: $tdp");
    pref.setString("compare_info6P2", "Graphics: $integGraphics");
    pref.setString("compare_info7P2", "Price: \u20B1$price");
    pref.setString('compare_info8P2', " ");
    pref.setString('compare_info9P2', " ");
  }
}
