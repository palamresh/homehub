// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:homehub/controlling_monetring/help_and_support.dart';
import 'package:homehub/setting/backup_and_restore.dart';
import 'package:homehub/setting/emergency_call.dart';
import 'package:homehub/setting/family_member.dart';
import 'package:homehub/setting/remot_access_control.dart';
import 'package:homehub/setting/upgrade.dart';
import 'package:homehub/setting/usage_log.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final title = [
    'Help and Support',
    "Backup and Restore",
    "Emergency call settings",
    "Usage Log Activities",
    "Remote Access Control",
    "Premium Features",
    "Manage Family Members",
  ];

  final route = [
    HelpAndSupport(),
    BackupAndRestore(),
    EmergencyCallSetting(),
    UsageLogActivity(),
    RemoteAccessControll(),
    UpgradePlan(),
    FamilyMember(),
  ];

  final icon = [
    Icons.safety_divider_outlined,
    Icons.restore,
    Icons.emergency_sharp,
    Icons.login_sharp,
    Icons.remember_me,
    Icons.diamond_sharp,
    Icons.account_box_sharp
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: h * .02, color: Colors.white, letterSpacing: 1),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: h * .01,
          ),
          Expanded(
            child: ListView.builder(
                itemExtent: 100,
                itemCount: icon.length,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * .02,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.1),
                      ),
                      child: Center(
                        child: ListTile(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => route[index]));
                          },
                          leading: Icon(
                            icon[index],
                            size: h * .04,
                            color: Colors.white,
                          ),
                          title: Text(
                            title[index],
                            style: TextStyle(
                                fontSize: h * .03 / 1.4,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
