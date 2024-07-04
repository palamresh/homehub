// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:homehub/user_list/scene_creation.dart';

class SceneSection extends StatefulWidget {
  const SceneSection({super.key});

  @override
  State<SceneSection> createState() => _SceneSectionState();
}

class _SceneSectionState extends State<SceneSection> {
  bool a = false;
  bool b = true;
  bool c = true;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Scene's Section",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: h * .06,
                    width: w / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellowAccent.withOpacity(.7)),
                    child: Center(
                      child: Text(
                        'All scenes',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: h * .06,
                    width: w / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.10)),
                    child: Center(
                      child: Text(
                        'Living Room',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: h * .06,
                    width: w / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.10)),
                    child: Center(
                      child: Text(
                        'Kitchen',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h * .2 / 1.9,
              width: w * 2 / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.10)),
              child: ListTile(
                trailing: Switch(
                  value: a,
                  onChanged: (value) {
                    setState(() {
                      a = value;
                    });
                  },
                ),
                subtitle: Text(
                  "EveryDay || 8:15 AM - 9 AM",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.5,
                      fontWeight: FontWeight.w500),
                ),
                title: Text(
                  "Morning coffee",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h * .2 / 1.9,
              width: w * 2 / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.10)),
              child: ListTile(
                trailing: Switch(
                  value: b,
                  onChanged: (value) {
                    setState(() {
                      b = value;
                    });
                  },
                ),
                subtitle: Text(
                  "Mon,Fri || 8:00 PM - 11 PM",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.5,
                      fontWeight: FontWeight.w500),
                ),
                title: Text(
                  "Movie Night",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h * .2 / 1.9,
              width: w * 2 / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.10)),
              child: ListTile(
                trailing: Switch(
                  value: c,
                  onChanged: (value) {
                    setState(() {
                      c = value;
                    });
                  },
                ),
                subtitle: Text(
                  "EveryDay || 12:00 PM - 7 AM",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.5,
                      fontWeight: FontWeight.w500),
                ),
                title: Text(
                  "Sleeping",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * .06,
            width: double.infinity,
            child: TextButton(
                // style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SceneCreation()));
                },
                child: Text(
                  "+   Add Device",
                  style: TextStyle(fontSize: h * .02, color: Colors.blueAccent),
                )),
          ),
        ],
      ),
    );
  }
}
