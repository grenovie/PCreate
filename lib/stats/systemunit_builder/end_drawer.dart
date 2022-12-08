import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../page/drawer/system_unit_builder.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  String? sysId;
  String? sysImg;
  // static const String img = "assets/empty_case1.png";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Top(),
        GestureDetector(
          onTap: (() {}),
          child: Container(
            height: 150,
            decoration: BoxDecoration(color: Colors.red[100]),
          ),
        ),
        sysId == null
            ? const Text(
                ("Reset"),
                style: TextStyle(color: Colors.black),
              )
            : Text(
                sysId!,
                style: const TextStyle(color: Colors.black),
              ),
        TextButton(
          onPressed: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
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

            if (!mounted) return;
            Navigator.of(context).pop();
          },
          child: const Text(
            "PRESS ME TO DELETE ITEM\n TESTING BUTTON",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
