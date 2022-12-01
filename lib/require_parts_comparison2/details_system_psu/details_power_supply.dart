import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_psu.dart';
import 'package:test1/require_parts_comparison2/details_system_psu/body_system_power_supply.dart';

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
          setSysPsu(
              widget.systemPowerSupply.name, widget.systemPowerSupply.image);
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
      title: Text(widget.systemPowerSupply.name),
    );
  }

  Future<void> setSysPsu(caseValue, imageValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_psu_name2', caseValue);
    pref.setString('compare_pcImage_part2', imageValue);
  }
}
