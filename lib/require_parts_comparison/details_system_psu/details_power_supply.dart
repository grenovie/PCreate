import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/data/list_psu.dart';
import 'package:test1/require_parts_comparison/details_system_psu/body_system_power_supply.dart';

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
            widget.systemPowerSupply.name,
            widget.systemPowerSupply.image,
            widget.systemPowerSupply.type,
            widget.systemPowerSupply.rating,
            widget.systemPowerSupply.wattage,
            widget.systemPowerSupply.modular,
            widget.systemPowerSupply.color,
            widget.systemPowerSupply.price,
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
      title: Text(widget.systemPowerSupply.name),
    );
  }

  Future<void> setSysPsu(caseValue, imageValue, typeOf, rating, wattage,
      modular, color, price) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_info1P1', "Name: $caseValue");
    pref.setString('compare_pcImage_part1', imageValue);
    pref.setString('compare_info2P1', "Type: $typeOf");
    pref.setString('compare_info3P1', "Rating: $rating");
    pref.setString('compare_info4P1', "Wattage: $wattage");
    pref.setString('compare_info5P1', "Modular: $modular");
    pref.setString('compare_info6P1', "Color: $color");
    pref.setString('compare_info7P1', "Price: \u20B1$price");
    pref.setString('compare_info8P1', " ");
    pref.setString('compare_info9P1', " ");
  }
}
