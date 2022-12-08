import 'package:flutter/material.dart';
import 'package:test1/data/list_motherboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/details_su_builder/details_system_motherboard/body_system_motherboard.dart';

class DetailsSystemMotherboard extends StatefulWidget {
  final ListMotherboard systemMotherboard;

  const DetailsSystemMotherboard({Key? key, required this.systemMotherboard})
      : super(key: key);

  @override
  State<DetailsSystemMotherboard> createState() => _DetailsSystemCaseState();
}

class _DetailsSystemCaseState extends State<DetailsSystemMotherboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar(context),
      body: BodySystemMobo(
        systemMotherboard: widget.systemMotherboard,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! This area for getting the image for the image_transition
          setSysMobo(
            widget.systemMotherboard.name,
            widget.systemMotherboard.image2D,
            widget.systemMotherboard.price,
            widget.systemMotherboard.socket,
            widget.systemMotherboard.ddr,
          );
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
      title: Text(widget.systemMotherboard.name),
    );
  }

  Future<void> setSysMobo(caseValue, imageValue, price, socket, ddr) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('mobo', caseValue);
    pref.setString('mobo_image', imageValue);
    pref.setString('compatible_socket', socket);
    pref.setString('compatible_ddr', ddr);
    pref.setDouble('sysMobo_price',
        price = double.parse(price.toString().replaceAll(RegExp(r','), "")));
  }
}
