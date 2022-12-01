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
    getSysCase();
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
            child: sysImg == null
                ? Image.asset(
                    "assets/image_default.png",
                    scale: 1.5,
                  )
                : Image.asset(sysImg!),
          ),
        ),
        sysId == null
            ? const Text(
                ("Select Items in Computer Parts"),
                style: TextStyle(color: Colors.black),
              )
            : Text(
                sysId!,
                style: const TextStyle(color: Colors.black),
              ),
        TextButton(
          onPressed: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.remove('sysCase');
            pref.remove('image');
            pref.remove('mobo_image');
            pref.remove('cpu_image');
            pref.remove('gpu_image');
            pref.remove('psu_image');
            pref.remove('ram_image');
            pref.remove('rom_image');

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

  void getSysCase() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    sysId = pref.getString('sysCase');
    sysImg = pref.getString('image');
    setState(() {});
  }
}
