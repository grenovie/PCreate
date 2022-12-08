import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/widget/drawer_menu_widget.dart';

class Troubleshooting extends StatefulWidget {
  final VoidCallback openDrawer;

  const Troubleshooting({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<Troubleshooting> createState() => _TroubleshootingState();
}

class _TroubleshootingState extends State<Troubleshooting> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar(context),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/gears.jpg"),
                fit: BoxFit.cover,
                opacity: .5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(3, 83, 151, .3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'TROUBLESHOOTING',
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.8),
                                    offset: const Offset(5, 5),
                                    blurRadius: 20),
                              ]),
                          children: const [
                            TextSpan(
                                text: "\nFrequently PC Errors",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromRGBO(255, 170, 76, 1)))
                          ]),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        border: Border.all(
                          color: const Color.fromARGB(255, 15, 59, 112),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: ListView(
                      children: [
                        //--> this area for frequently PC errors
                        Container(
                          height: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: "Power button will not start computer\n",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  const TextSpan(
                                      text:
                                          "Solution 1: If your computer does not start, begin by checking the power cord to confirm that it is plugged securely into the back of the computer case and the ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setPowerOutlet();
                                          getPowerOutlet();
                                        },
                                      text: "power outlet.\n",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.blue,
                                      )),
                                  const TextSpan(
                                      text:
                                          "Solution 2: If it is plugged into an outlet, make sure it is a working outlet. To check your outlet, you can plug in another electrical device, such as a lamp.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  const TextSpan(
                                      text:
                                          "Solution 3: If the computer is plugged in to a ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setSurgeProtector();
                                          getSurgeProtector();
                                        },
                                      text: "surge protector",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blue)),
                                  const TextSpan(
                                      text:
                                          ", verify that it is turned on. You may have to reset the surge protector by turning it off and then back on. You can also plug a lamp or other device into the surge protector to verify that it's working correctly.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal))
                                ],
                              ),
                            ),
                          ),
                        ),
                        //->2
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "An application is running slowly\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "Solution 1: Close and reopen the application.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Solution 2: Update the application. To do this, click the Help menu and look for an option to check for Updates. If you don't find this option, another idea is to run an online search for application updates.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //3
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "An application is running slowly\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "Solution 1: Force quit the application. On a PC, you can press (and hold) Ctrl+Alt+Delete (the Control, Alt, and Delete keys) on your keyboard to open the Task Manager. On a Mac, press and hold Command+Option+Esc. You can then select the unresponsive application and click End task (or Force Quit on a Mac) to close it.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Solution 2: Restart the computer. If you are unable to force quit an application, restarting your computer will close all open apps.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //4
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text:
                                    "All programs on the computer run slowly\n",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  const TextSpan(
                                      text: "Solution 1: Run a ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  //!Virus Scanner
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                      text: "virus scanner",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blue)),
                                  const TextSpan(
                                      text: ". You may have ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  //!Malware
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                      text: "malware ",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blue)),
                                  const TextSpan(
                                      text:
                                          "running in the background that is slowing things down..\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  const TextSpan(
                                      text:
                                          "Solution 2: Your computer may be running out of ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  //!Harddrive
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                      text: "hard drive ",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blue)),
                                  const TextSpan(
                                      text:
                                          "space. Try deleting any files or programs you don't need.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //5
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "The computer is frozen\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "Solution 1 (Windows only): Restart Windows Explorer. To do this, press and hold Ctrl+Alt+Delete on your keyboard to open the Task Manager. Next, locate and select Windows Explorer from the Processes tab and click Restart. You may need to click More Details at the bottom of the window to see the Processes tab.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Solution 2: Press and hold the Power button. The Power button is usually located on the front or side of the computer, typically indicated by the power symbol. Press and hold the Power button for 5 to 10 seconds to force the computer to shut down.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Solution 3: If the computer still won't shut down, you can unplug the power cable from the electrical outlet. If you're using a laptop, you may be able to remove the battery to force the computer to turn off. Note: This solution should be your last resort after trying the other suggestions above.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //6
                        Container(
                          height: 550,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "Dysfunctional USB Port\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If your USB port stops working, it’s not necessary that it’s broken. Below are some solutions that can fix this issue:\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Method 1: Restart the PCRestarting the PC is the answer to many problems, and it is a common solution to USB port problem as well.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Method 2: Uninstall USB port driver Uninstalling the driver of the USB port will force Windows to reinstall it when you will restart the PC. This may fix the problem. Here is how to do it:\n\t1. Press Windows + R keys and enter devmgmt.msc in the Run dialog to open the Device Manager.\n\t2. Here, expand Universal Serial Bus controller’s option.\n\t3. Now right-click the entry USB Host Controller and then click on Uninstall.\n\t4. Repeat this for all entries with USB Host Controller to uninstall drivers for all the USB ports.\n5. Once deleted, restart the PC and Windows will automatically reinstall the drivers and fix any driver issues.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //7
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "PC keeps disconnecting from Wi-Fit\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If your Wi-Fi is working fine but your PC keeps disconnecting from it, then your PC’s network card may not be receiving full power. Windows has a built-in power saver option that gives less power to the network card. You need to disable this feature:\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "\t1. Go to Advanced settings in the Power Options.\n\t2. Here expand Wireless Adaptor Settings and then expand Power Saving Mode.\n\t3. Set this to Maximum Performance.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //8
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "PC Fans not working\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If you notice one or more fans in your PC aren’t working, then it could be due to the dirt inside. You will have to open up the PC and use a compressed air can or a leaf blower to clean up the fans and other components.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //9
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "PC crashes before loading the OS\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If your PC only shows manufacturer logo and then crashes right before it was supposed to load the operating system, then it’s a problem with RAM or hard disk. As the OS is unable to load, then either the RAM is corrupted and can’t hold the boot loader or the hard drive is damaged and can’t load data inside it.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "If you have multiple RAM slots, then taking out each one of them one by one and starting the PC will help find the culprit. In the end, you will have to replace the corrupted RAM or the hard disk, whichever has the issue.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //10
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "PC isn’t powering ON\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If your PC is not powering on at all – not even a single light in it, then it must be a problem with the power source.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Desktop users: If your PC’s extension cord, power outlet, and other connections are working fine, then the problem may be with the PC’s power cable. Replace the power cable of the monitor with the CPU’s (if you don’t have a spare) to see if it turns on. You’ll have to get a new power cable if this fixes the problem.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Laptop users: Take out the battery and put it back before starting the laptop. If this doesn’t work, then take out the battery again and connect the charging cable to the laptop. Start the PC on charger power and see if it works. You will have to replace the battery if it fixes the problem.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Note: You should also remove all types of external devices connected to your PC while trying this. A malfunctioning device might cause this issue.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //11
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "Blue Screen of Death\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "The dreaded Blue Screen of Death (BSOD) can occur due to both software and hardware problems, but usually, it’s a hardware problem. Whatever the cause, BSOD requires immediate attention as it’s a sign of a big problem.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //12
                        Container(
                          height: 450,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "Noisy hard drive\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If your PC is not powering on at all – not even a single light in it, then it must be a problem with the power source.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          'If you hear clicking or grinding sound from the hard drive, then it might be time to get a new one. Hard drives have a limited lifespan and loud sounds are the main sign of a near hard drive failure. You can use CrystalDiskInfo hard drive monitoring tool to check the health of your hard drive. The tool will tell you the current health of the hard drive with signs like "Good", "Caution" or "Bad".\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "Note: You should back up all your data immediately and try to get another hard disk before this one fails on you.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //13
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 15, 59, 112),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                text: "Blank monitor\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          "If your monitor isn’t showing anything, then this could be a problem with the monitor itself or the graphics card. You should connect the monitor to another PC to see whether the problem is with the PC or the monitor.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text:
                                          "If the monitor isn’t powering on at all, then replace the power cable with a working one and see if it helps. Here is a good article on how to fix a monitor that isn’t showing anything.\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //!this is the end
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 15, 59, 112),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          text: TextSpan(
                              text: "Meaning: \n",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 17),
                              children: [TextSpan(text: meaning)])),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //manual troubleshoot because of jargon
        ),
      );

  //!AREA for void functions and methods
  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: DrawerMenuWidget(
        onClicked: widget.openDrawer,
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
      title: const Text(''),
    );
  }

  //--> Meaning_setter this area.
  Future<void> setPowerOutlet() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("meaning",
        "Power Outlet\n\t-a device to which a piece of electrical equipment can be connected in order to provide it with electricity.");
  }

  Future<void> setVirusScanner() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("meaning",
        "Virus Scanner\n\t-a device to which a piece of electrical equipment can be connected in order to provide it with electricity.");
  }

  Future<void> setSurgeProtector() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("meaning",
        "Surge Protector\n\t-A surge protector is an appliance or device intended to protect electrical devices from voltage spikes in alternating current (AC) circuits.");
  }

  //-->Meaning_getter this area.
  void getPowerOutlet() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    meaning = pref.getString('meaning');
    setState(() {});
  }

  void getSurgeProtector() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    meaning = pref.getString('meaning');
    setState(() {});
  }

  //-->try variable area.
  String? meaning = "";
}
