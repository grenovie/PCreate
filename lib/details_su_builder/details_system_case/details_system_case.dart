import 'package:flutter/material.dart';
import 'package:test1/data/list_system_case.dart';
import 'package:test1/details_su_builder/details_system_case/body_systemcase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailsSystemCase extends StatefulWidget {
  final ListSystemCase systemcase;

  const DetailsSystemCase({Key? key, required this.systemcase})
      : super(key: key);

  @override
  State<DetailsSystemCase> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailsSystemCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodySystemCase(
        systemcase: widget.systemcase,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setSysCase(
              widget.systemcase.name,
              widget.systemcase.image2D,
              widget.systemcase.image,
              widget.systemcase.name,
              widget.systemcase.price);
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
      title: Text(widget.systemcase.name),
    );
  }

  Future<void> setSysCase(caseValue, imageValue, imageOrig, name, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('sysCase', caseValue);
    pref.setString('image', imageValue);
    pref.setString('imageOrig', imageOrig);
    pref.setString('sysCaseName', name);
    pref.setDouble('sysCase_price',
        price = double.parse(price.toString().replaceAll(RegExp(r','), "")));
  }
}
