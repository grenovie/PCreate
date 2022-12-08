import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_psu.dart';

import 'body_system_power_supply.dart';

class DetailPowerSupply extends StatefulWidget {
  final ListPowerSupply systemPowerSupply;

  const DetailPowerSupply({Key? key, required this.systemPowerSupply})
      : super(key: key);

  @override
  State<DetailPowerSupply> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailPowerSupply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodyPowerSupply(
        systemPowerSupply: widget.systemPowerSupply,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setSysPsu(widget.systemPowerSupply.name,
              widget.systemPowerSupply.image2D, widget.systemPowerSupply.price);
          var snackBar = SnackBar(
              backgroundColor: Colors.green[400],
              content: const Text('Succesfully added to Inventory'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context)
            ..pop
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
      title: Text(widget.systemPowerSupply.name),
    );
  }

  Future<void> setSysPsu(caseValue, imageValue, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('psu', caseValue);
    pref.setString('psu_image', imageValue);
    pref.setDouble('sysPsu_price',
        price = double.parse(price.toString().replaceAll(RegExp(r','), "")));
  }
}
