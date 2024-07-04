// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class FamilyMember extends StatefulWidget {
  const FamilyMember({super.key});

  @override
  State<FamilyMember> createState() => _FamilyMemberState();
}

class _FamilyMemberState extends State<FamilyMember> {
  final title = [
    'User 1',
    "User 2",
    "User 3",
  ];

  final dollor = ["user1@gmail.com", "user2@gmail.com", "user3@gmail.com"];

  final icon = [
    Icons.manage_accounts,
    Icons.manage_accounts,
    Icons.manage_accounts
  ];
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
          "Family Member",
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
                        trailing: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        subtitle: Text(
                          "${dollor[index]}",
                          style: TextStyle(
                              fontSize: h * .03 / 1.4,
                              color: Colors.white,
                              letterSpacing: 1),
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
