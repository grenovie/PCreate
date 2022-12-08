import 'package:flutter/material.dart';
import 'package:test1/data/shops.dart';
import 'package:test1/details_shop/itemcard_shops.dart';
import 'package:test1/widget/drawer_menu_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class WhereToBuy extends StatefulWidget {
  final VoidCallback openDrawer;

  const WhereToBuy({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<WhereToBuy> createState() => _WhereToBuyState();
}

class _WhereToBuyState extends State<WhereToBuy> {
  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw "nothing";
    }
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
                opacity: .7),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 30),
                  width: MediaQuery.of(context).size.width * .7,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(3, 83, 151, .3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'WHERE CAN BUY',
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
                              text: "\nCOMPUTER STORES",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromRGBO(255, 170, 76, 1)))
                        ]),
                  ),
                ),
              ),
              //* This is a computer store area
              //?doing something
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: GridView.builder(
                    itemCount: shops.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 1,
                            mainAxisSpacing: 50,
                            crossAxisSpacing: 50),
                    itemBuilder: (context, index) => ShopsItemCard(
                      shops: shops[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
