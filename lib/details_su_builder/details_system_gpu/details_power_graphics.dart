import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_gpu.dart';

import 'body_system_graphics.dart';

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
          setSysGpu(widget.systemGraphics.name, widget.systemGraphics.image2D,
              widget.systemGraphics.price);
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
      title: Text(widget.systemGraphics.name),
    );
  }

  Future<void> setSysGpu(caseValue, imageValue, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('gpu', caseValue);
    pref.setString('gpu_image', imageValue);
    pref.setDouble('sysGpu_price',
        price = double.parse(price.toString().replaceAll(RegExp(r','), "")));
  }
}
