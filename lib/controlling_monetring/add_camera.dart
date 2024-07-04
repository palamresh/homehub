// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class AddCamera extends StatefulWidget {
  const AddCamera({super.key});

  @override
  State<AddCamera> createState() => _AddCameraState();
}

class _AddCameraState extends State<AddCamera> {
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
          "CCTV Monitoring And Add Camera",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                          height: h * .3 / 1.2,
                          width: w * 2 / 1.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(.10)),
                          child: Center(
                            child: Text("Add your camera here.",
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontSize: h * .03 / 1.3,
                                    fontWeight: FontWeight.w500)),
                          )),
                      Positioned(
                        top: 20,
                        right: 10,
                        child: Text(
                          "⭕ REC",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .03 / 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: h * .2 / 1.5,
                    width: w * 2 / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent.withOpacity(.5)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Living Room",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .03 / 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "🟢 Camera On",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.3,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: h * .2 / 1.5,
                    width: w * 2 / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple.withOpacity(.9)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bedroom",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .03 / 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "🟢 Camera On",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.3,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * .02,
                ),
                Center(
                  child: SizedBox(
                    height: h * .06,
                    width: w / 2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Save",
                          style:
                              TextStyle(fontSize: h * .02, color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
