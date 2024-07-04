// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:homehub/home_screen/link_new_device.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
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
          title: Column(
            children: [
              Text(
                "Add new devices",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Scan your Device here",
                style: TextStyle(color: Colors.white, fontSize: h * .02),
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.document_scanner,
                color: Colors.white,
                size: h * .3,
              ),
              SizedBox(
                height: h * .08,
              ),
              SizedBox(
                height: h * .06,
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LinkNewDevice()));
                    },
                    child: Text(
                      "Add Device",
                      style: TextStyle(fontSize: h * .02, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
