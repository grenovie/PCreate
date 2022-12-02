import 'package:flutter/material.dart';
import 'package:test1/data/list_system_case.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/require_parts_comparison2/details_system_case/body_systemcase.dart';

class DetailsSystemCase extends StatefulWidget {
  final ListSystemCase systemcase;

  const DetailsSystemCase({Key? key, required this.systemcase})
      : super(key: key);

  @override
  State<DetailsSystemCase> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailsSystemCase> {
  List<Route> arrayRoutes = [];

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
              widget.systemcase.image,
              widget.systemcase.type,
              widget.systemcase.color,
              widget.systemcase.sidepannel,
              widget.systemcase.price);
          var snackBar = SnackBar(
              backgroundColor: Colors.green[400], content: const Text('Done'));
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
      title: Text(widget.systemcase.name),
    );
  }

  Future<void> setSysCase(
    caseName,
    imageValue,
    typeOf,
    colorOf,
    sidepannel,
    price,
  ) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('compare_info1P2', "Name: $caseName");
    pref.setString('compare_pcImage_part2', imageValue);
    pref.setString('compare_info2P2', "Type: $typeOf");
    pref.setString('compare_info3P2', "Color: $colorOf");
    pref.setString('compare_info4P2', "SidePannel: $sidepannel");
    pref.setString('compare_info5P2', "Price: \u20B1$price");
  }
}
