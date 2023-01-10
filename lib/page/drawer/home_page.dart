import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class HomePage extends StatefulWidget {
  final VoidCallback openDrawer;

  const HomePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
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
                image: AssetImage("assets/BGdev.jpg"),
                fit: BoxFit.cover,
                opacity: .5),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ListView(
              // itemExtent: 150,
              padding: const EdgeInsets.all(10),
              children: [
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'PC',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: 'REATE', style: TextStyle(fontSize: 40)),
                          TextSpan(
                              text: "\nABOUT APP",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue))
                        ]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40, top: 20),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                          text:
                              "Building a computer is also a skill that you will take with you wherever you go. Building a PC allows you to handpick every component that goes into your machine. When you have total control over your computer's internal components, the final product can have a better overall build quality",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: '', style: TextStyle(fontSize: 40)),
                          ]),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: '',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  tutorialModal(context);
                                },
                              text: 'How to use...',
                              style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  tutorialModal2(context);
                                },
                              text: '\n\nGuide to System Unit Builder...',
                              style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline)),
                        ]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                          text: "DEVELOPERS",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: '', style: TextStyle(fontSize: 40)),
                          ]),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/profiles/bacia.png"),
                            scale: 2,
                            fit: BoxFit.cover),
                        color: const Color.fromRGBO(95, 111, 148, .5),
                        border: Border.all(
                            color: const Color.fromRGBO(151, 210, 236, 1),
                            width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    // --> child: "image child here"
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 0),
                        child: const Text(
                          "Bacia, Cyril Joseph A.\njosephcyrilbacia@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/profiles/greno.png"),
                            scale: 2,
                            fit: BoxFit.cover),
                        color: const Color.fromRGBO(95, 111, 148, .5),
                        border: Border.all(
                            color: const Color.fromRGBO(151, 210, 236, 1),
                            width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    // --> child: "image child here"
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 0),
                        child: const Text(
                          "Elumir, Grenovie C.\ngrenoviemagi15@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/profiles/linezo.jpg"),
                            scale: 2,
                            fit: BoxFit.cover),
                        color: const Color.fromRGBO(95, 111, 148, .5),
                        border: Border.all(
                            color: const Color.fromRGBO(151, 210, 236, 1),
                            width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    // --> child: "image child here"
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 0),
                        child: const Text(
                          "Linezo, Rance Christian\nchristianlinezo27@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/profiles/ordanza.jpg"),
                            scale: 2,
                            fit: BoxFit.cover),
                        color: const Color.fromRGBO(95, 111, 148, .5),
                        border: Border.all(
                            color: const Color.fromRGBO(151, 210, 236, 1),
                            width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    // --> child: "image child here"
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 0),
                        child: const Text(
                          "Ordanza, Earl Cedric\nordanza.cedric@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ]),
              ],
            ),
          ),
        ),
      );

  Future<void> tutorialModal(BuildContext context) {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 1);
              },
              children: [
                buildpage(
                  color: Colors.blue.shade100,
                  urlImage: 'assets/animated/1.png',
                  title: 'To Access MENU',
                  subtitle:
                      'Click on the Icon in the upper right corner to open the MENU drawer.',
                ),
                buildpage(
                  color: Colors.blue.shade100,
                  urlImage: 'assets/animated/2.png',
                  title: 'Features',
                  subtitle:
                      'After clicking the Menu Icon end users can choose which application features they want to use.',
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    child: Text(
                      "NEXT",
                    )),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 2,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "CLOSE",
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> tutorialModal2(BuildContext context) {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 1);
              },
              children: [
                buildpage(
                  color: Color.fromARGB(255, 178, 190, 203),
                  urlImage: 'assets/animated/step1.png',
                  title: 'STEP 1',
                  subtitle: 'To select Computer Parts',
                ),
                buildpage(
                  color: Color.fromARGB(255, 178, 190, 203),
                  urlImage: 'assets/animated/step2.png',
                  title: 'STEP 2',
                  subtitle: 'Go to processor',
                ),
                buildpage(
                  color: Color.fromARGB(255, 178, 190, 203),
                  urlImage: 'assets/animated/step3.png',
                  title: 'STEP 3',
                  subtitle: 'Select a processor',
                ),
                buildpage(
                  color: Color.fromARGB(255, 178, 190, 203),
                  urlImage: 'assets/animated/step 4.png',
                  title: 'STEP 4',
                  subtitle: 'Tap the add button',
                ),
                buildpage(
                  color: Color.fromARGB(255, 178, 190, 203),
                  urlImage: 'assets/animated/step4.png',
                  title: 'STEP 5',
                  subtitle:
                      'After selecting item buttons will turn green, indicates you are done selecting items',
                ),
                buildpage(
                  color: Color.fromARGB(255, 178, 190, 203),
                  urlImage: 'assets/animated/step 5.png',
                  title: 'STEP 6',
                  subtitle:
                      'Tap item button to play animation and to reverse animation just press and hold the item button',
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    child: Text(
                      "NEXT",
                    )),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 6,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "CLOSE",
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildpage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * .50,
              width: double.infinity,
            ),
            const SizedBox(height: 64),
            Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      );
}
