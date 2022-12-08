import 'package:flutter/material.dart';
import 'package:test1/data/list_cpu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/details_su_builder/details_system_cpu/body_system_processor.dart';

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
            widget.systemProcessor.image2D,
            widget.systemProcessor.x1,
            widget.systemProcessor.x2,
            widget.systemProcessor.price,
          );
          var snackBar = SnackBar(
              backgroundColor: Colors.green[400],
              content: const Text('Succesfully added to Inventory'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context).pop();
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

  Future<void> setSysProcessor(caseValue, imageValue, x1, x2, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('cpu', caseValue);
    pref.setString('cpu_image', imageValue);
    pref.setDouble('cpu_x1', x1);
    pref.setDouble('cpu_x2', x2);
    pref.setDouble('sysCpu_price',
        price = double.parse(price.toString().replaceAll(RegExp(r','), "")));
  }
}
