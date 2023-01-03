import 'package:flutter/material.dart';
import 'package:test1/data/list_budget.dart';
import 'package:test1/details_budgetcomp/build_details.dart';
import 'package:test1/details_budgetcomp/itemcard_bgtcomputer.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class BudgetComputer extends StatefulWidget {
  final VoidCallback openDrawer;

  const BudgetComputer({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<BudgetComputer> createState() => _BudgetComputerState();
}

class _BudgetComputerState extends State<BudgetComputer> {
  static List<ListBudget> searched = budgetcomputer;
  @override
  void initState() {
    super.initState();
  }

  void updateList(String value) {
    // var val = int.parse(value);
    setState(() {
      searched = budgetcomputer
          .where((element) => element.setter.toString().contains(value))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: DrawerMenuWidget(
            onClicked: widget.openDrawer,
          ),
          backgroundColor: Theme.of(context).primaryColorLight,
          title: const Text(''),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/BGbudget.jpg"),
                fit: BoxFit.cover,
                opacity: .4),
          ),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 30),
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(102, 75, 75, 75),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'BUDGET',
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.8),
                                    offset: const Offset(5, 5),
                                    blurRadius: 20),
                              ]),
                          children: const [
                            TextSpan(
                                text: "\nCOMPUTERS",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromRGBO(143, 227, 207, 1)))
                          ]),
                    ),
                  ),
                ),
                TextField(
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none),
                      hintText: 'Input Price ex. "20" for 20K ',
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Colors.black),
                  onChanged: (value) => updateList(value),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: searched.isEmpty
                        ? const Center(
                            child: Text(
                                "Sorry No result found, developers will input more of this items",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)))
                        : GridView.builder(
                            itemCount: searched.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 1,
                                    mainAxisSpacing: 50,
                                    crossAxisSpacing: 50),
                            itemBuilder: (context, index) => BgtComputer(
                              bgcomputer: searched[index],
                              press: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BudgetDetails(
                                            bdgtcomputer: searched[index],
                                          ))),
                            ),
                          ),
                  ),
                )
              ]),
        ),
      );
}
