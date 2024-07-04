import 'package:flutter/material.dart';
import 'package:homehub/user_list/device_scheduling.dart';
import 'package:homehub/user_list/enery_analysis.dart';
import 'package:homehub/user_list/new_space.dart';
import 'package:homehub/user_list/section.dart';
import 'package:homehub/user_list/view_room.dart';

class ActivityList extends StatefulWidget {
  const ActivityList({super.key});

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  final title = [
    'View Room',
    "Scene's sections",
    "Device scheduling",
    "Energy Analysis",
    "Create New Space",
  ];

  final route = [
    Room(),
    SceneSection(),
    DeviceScheduling(),
    EnergyAnalysis(),
    NewSpace(),
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
          "Activity List",
          style: TextStyle(
              fontSize: h * .02, color: Colors.white, letterSpacing: 1),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search",
                labelText: "Search",
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                labelStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: h * .01,
          ),
          Expanded(
            child: ListView.builder(
                itemExtent: 100,
                itemCount: 5,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => route[index]));
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: h * .08,
                        width: w * 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(.2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title[index],
                              style: TextStyle(
                                  fontSize: h * .02,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: h * .03,
                              color: Colors.white,
                            )
                          ],
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
