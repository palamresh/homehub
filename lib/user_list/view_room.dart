// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
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
          "Room",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h * .2 / 1.5,
                  width: w * 2 / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.10)),
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
                              fontSize: h * .03,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "4 device",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .02,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
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
                      color: Colors.white.withOpacity(.10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BedRoom",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .03,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "2 device",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .02,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: h * .06,
              //   width: double.infinity,
              //   child: ElevatedButton(
              //       style:
              //           ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              //       onPressed: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => LinkNewDevice()));
              //       },
              //       child: Text(
              //         "Add Device",
              //         style: TextStyle(fontSize: h * .02, color: Colors.white),
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
