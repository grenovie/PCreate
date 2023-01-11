import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../page/drawer/system_unit_builder.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

class _EndDrawerState extends State<EndDrawer> {
  //systemCase
  String? systemUnitCase;
  String? sysImg;
  double? priceSyscase;
  //systemMobo
  String? sysMotherboard;
  String? infoMotherboard;
  double? priceMobo;
  //systemCpu
  String? sysProcessor;
  String? infoProcessor;
  double? priceCpu;
  //systemRAM
  String? sysMemory;
  String? infoRAM;
  double? priceRam;
  //systemROM
  String? sysStorage;
  String? infoStorage;
  double? priceRom;
  //systemPsu
  String? sysPsu;
  String? infoPSU;
  double? pricePsu;
  //systemGpu
  String? sysGpu;
  String? infoGPU;
  double? priceGpu;
  @override
  void initState() {
    getSysCase();
    getSysMobo();
    getSysProcessor();
    getSysGpu();
    getSysRam();
    getSysRom();
    getSysPsu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            const Top(),
            //SYSTEMcASE
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysImg == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysImg!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: systemUnitCase == null
                                ? "System Case:"
                                : "System Case: $systemUnitCase",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: priceSyscase == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(priceSyscase)} "),
                              TextSpan(
                                  text: systemUnitCase == null
                                      ? ""
                                      : "\nThe primary function of the computer system unit is to hold all the other components together and protect the sensitive electronic parts from the outside elements. A typical computer case is also large enough to allow for upgrades, such as adding a second hard drive or a higher-quality video card.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Motherboard
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysMotherboard == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysMotherboard!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: infoMotherboard == null
                                ? "Motherboard:"
                                : "Motherboard: $infoMotherboard",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: priceMobo == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(priceMobo)} "),
                              TextSpan(
                                  text: sysMotherboard == null
                                      ? ""
                                      : "\nThe motherboard is the backbone that ties the computer's components together at one spot and allows them to talk to each other. Without it, none of the computer pieces, such as the CPU, GPU, or hard drive, could interact. Total motherboard functionality is necessary for a computer to work well.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //processor
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysProcessor == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysProcessor!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: infoProcessor == null
                                ? "Processor:"
                                : "Processor: $infoProcessor",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: priceCpu == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(priceCpu)} "),
                              TextSpan(
                                  text: sysProcessor == null
                                      ? ""
                                      : "\nThe processor, also known as the CPU, provides the instructions and processing power the computer needs to do its work. The more powerful and updated your processor, the faster your computer can complete its tasks. By getting a more powerful processor, you can help your computer think and work faster.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Memory
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysMemory == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysMemory!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: infoRAM == null
                                ? "Memory:"
                                : "Memory: $infoRAM",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: priceRam == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(priceRam)} "),
                              TextSpan(
                                  text: sysMemory == null
                                      ? ""
                                      : "\nMemory is the electronic holding place for the instructions and data a computer needs to reach quickly. It's where information is stored for immediate use. Memory is one of the basic functions of a computer, because without it, a computer would not be able to function properly.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Storage
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysStorage == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysStorage!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: infoStorage == null
                                ? "Storage:"
                                : "Storage: $infoStorage",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: priceRom == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(priceRom)} "),
                              TextSpan(
                                  text: sysStorage == null
                                      ? ""
                                      : "\nOn a computer, this includes all of your photos, videos, music, documents, and applications, and beyond that, the code for your computer's operating system, frameworks, and drivers are stored on hard drives too.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Psu
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysPsu == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysPsu!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: infoPSU == null
                                ? "PowerSupply:"
                                : "PowerSupply: $infoPSU",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: pricePsu == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(pricePsu)} "),
                              TextSpan(
                                  text: sysPsu == null
                                      ? ""
                                      : "\nA power supply is an electrical device that offers electric power to an electrical load such as laptop computer, server, or other electronic devices. The main function of a power supply is to convert electric current from a source to the correct voltage, current, and frequency to power the load.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Gpu
            Center(
              child: Container(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: sysGpu == null
                              ? Container(
                                  child: Image.asset(
                                      "assets/animated/Platform1.png"),
                                )
                              : Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110),
                                      child: SizedBox(
                                          child: Image.asset(
                                              "assets/animated/Platform1.png")),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        sysGpu!,
                                        fit: BoxFit.fill,
                                        scale: 2,
                                      ),
                                    ),
                                  ],
                                )),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: infoGPU == null
                                ? "GraphicsCard:"
                                : "GraphicsCard: $infoGPU",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: priceGpu == null
                                      ? "\nPrice: "
                                      : "\nPrice: \u20B1${myFormat.format(priceGpu)} "),
                              TextSpan(
                                  text: sysGpu == null
                                      ? ""
                                      : "\nGraphics processing unit, a specialized processor originally designed to accelerate graphics rendering. GPUs can process many pieces of data simultaneously, making them useful for machine learning, video editing, and gaming applications.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //!open this area
          ],
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              height: 70,
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.blue, width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 31, 91, 121),
                      padding: const EdgeInsets.all(5.0),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.remove('sysCaseName');
                      pref.remove('image');
                      pref.remove('mobo_image');
                      pref.remove('mobo');
                      pref.remove('cpu_image');
                      pref.remove('cpu');
                      pref.remove('gpu_image');
                      pref.remove('gpu');
                      pref.remove('psu_image');
                      pref.remove('psu');
                      pref.remove('ram_image');
                      pref.remove('ram');
                      pref.remove('rom_image');
                      pref.remove('rom');
                      pref.remove('sysCpu_price');
                      pref.remove('sysMobo_price');
                      pref.remove('sysRam_price');
                      pref.remove('sysRom_price');
                      pref.remove('sysPsu_price');
                      pref.remove('sysGpu_price');
                      pref.remove('sysCase_price');
                      pref.remove('compatible_socket');
                      pref.remove('isDoneSystemCase');
                      pref.remove('isDoneMotherboard');
                      pref.remove('isDoneCpu');
                      pref.remove('isDoneRam');
                      pref.remove('isDoneRom');
                      pref.remove('isDonePsu');
                      pref.remove('isDoneGpu');
                      pref.remove('imageOrig');
                      pref.remove('moboOrig');
                      pref.remove('cpuOrig');
                      pref.remove('ramOrig');
                      pref.remove('romOrig');
                      pref.remove('psuOrig');
                      pref.remove('gpuOrig');
                      if (!mounted) return;
                      Navigator.of(context).pop(true);
                    },
                    child: Row(
                      children: [
                        Icon(
                            color: Color.fromARGB(255, 255, 255, 255),
                            Icons.restart_alt),
                        const Text('Reset Items'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.blue, width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 31, 91, 121),
                      padding: const EdgeInsets.all(5.0),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.remove('gpu_image');
                      pref.remove('gpu');
                      pref.remove('sysGpu_price');
                      pref.remove('isDoneGpu');
                      pref.remove('gpuOrig');
                      if (!mounted) return;
                      Navigator.of(context).pop(true);
                    },
                    child: Row(
                      children: [
                        Icon(
                            color: Color.fromARGB(255, 255, 255, 255),
                            Icons.clear),
                        const Text('Remove GPU'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void getSysCase() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysImg = pref.getString('imageOrig');
    systemUnitCase = pref.getString('sysCaseName');
    priceSyscase = pref.getDouble('sysCase_price');
    setState(() {});
  }

  void getSysMobo() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysMotherboard = pref.getString('moboOrig');
    infoMotherboard = pref.getString('mobo');
    priceMobo = pref.getDouble('sysMobo_price');
    setState(() {});
  }

  void getSysProcessor() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysProcessor = pref.getString('cpuOrig');
    infoProcessor = pref.getString('cpu');
    priceCpu = pref.getDouble('sysCpu_price');
    setState(() {});
  }

  void getSysRam() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysMemory = pref.getString('ramOrig');
    infoRAM = pref.getString('ram');
    priceRam = pref.getDouble('sysRam_price');
    setState(() {});
  }

  void getSysRom() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysStorage = pref.getString('romOrig');
    infoStorage = pref.getString('rom');
    priceRom = pref.getDouble('sysRom_price');
    setState(() {});
  }

  void getSysPsu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysPsu = pref.getString('psuOrig');
    infoPSU = pref.getString('psu');
    pricePsu = pref.getDouble('sysPsu_price');
    setState(() {});
  }

  void getSysGpu() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysGpu = pref.getString('gpuOrig');
    infoGPU = pref.getString('gpu');
    priceGpu = pref.getDouble('sysGpu_price');
    setState(() {});
  }
}
