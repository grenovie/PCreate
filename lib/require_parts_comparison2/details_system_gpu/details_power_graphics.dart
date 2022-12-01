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
          setSysGpu(widget.systemGraphics.name, widget.systemGraphics.image);
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

  Future<void> setSysGpu(caseValue, imageValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_gpu_name2', caseValue);
    pref.setString('compare_pcImage_part2', imageValue);
  }
}
