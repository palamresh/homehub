// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class UpgradePlan extends StatefulWidget {
  const UpgradePlan({super.key});

  @override
  State<UpgradePlan> createState() => _UpgradePlanState();
}

class _UpgradePlanState extends State<UpgradePlan> {
  final title = [
    'Basic Plan',
    "Gold Plan",
    "Premium Plan",
  ];

  final dollor = ["💲100", "💲200", "💲270"];

  final icon = [Icons.play_arrow, Icons.diamond, Icons.workspace_premium];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Upgrade Plan",
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
                          trailing: Text(
                            "${dollor[index]}",
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
