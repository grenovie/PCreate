import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_storage.dart';
import 'package:test1/require_parts_comparison/details_system_storage/body_system_storage.dart';

class DetailStorage extends StatefulWidget {
  final ListStorage systemStorage;

  const DetailStorage({Key? key, required this.systemStorage})
      : super(key: key);

  @override
  State<DetailStorage> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodyStorage(
        systemStorage: widget.systemStorage,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setSysRom(
            widget.systemStorage.name,
            widget.systemStorage.image,
            widget.systemStorage.capacity,
            widget.systemStorage.type,
            widget.systemStorage.formFactor,
            widget.systemStorage.price,
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
      title: Text(widget.systemStorage.name),
    );
  }

  Future<void> setSysRom(
      caseValue, imageValue, capacity, typeOf, formFactor, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_info1P1', "Name: $caseValue");
    pref.setString('compare_pcImage_part1', imageValue);
    pref.setString('compare_info2P1', "Capacity: $capacity");
    pref.setString('compare_info3P1', "Type: $typeOf");
    pref.setString('compare_info4P1', "FormFactor: $formFactor");
    pref.setString('compare_info5P1', "Price: \u20B1$price");
    pref.setString('compare_info6P1', " ");
    pref.setString('compare_info7P1', " ");
    pref.setString('compare_info8P1', " ");
    pref.setString('compare_info9P1', " ");
  }
}
