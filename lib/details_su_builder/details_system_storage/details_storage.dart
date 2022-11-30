import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_storage.dart';

import 'body_system_storage.dart';

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
          setSysRom(widget.systemStorage.name, widget.systemStorage.image2D);
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
      title: Text(widget.systemStorage.name),
    );
  }

  Future<void> setSysRom(caseValue, imageValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rom', caseValue);
    pref.setString('rom_image', imageValue);
  }
}
