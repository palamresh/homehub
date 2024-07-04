// ignore_for_file: unused_local_variable

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
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
          "Help And Support",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello \n How can we help you Today?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: h * .02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Search",
                    labelText: "Ask your question here.",
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
                height: h * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * .3 / 1.3,
                      width: w / 2 / 1.2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AvatarGlow(
                            glowColor: Colors.redAccent,
                            child: Material(
                              // Replace this child with your own
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue[100],
                                child: Icon(Icons.help_center),
                                radius: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * .02,
                          ),
                          Text(
                            "Chat with our\n Executive",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.2,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * .3 / 1.3,
                      width: w / 2 / 1.2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AvatarGlow(
                            glowColor: Colors.blue,
                            child: Material(
                              // Replace this child with your own
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue[100],
                                child: Icon(Icons.call),
                                radius: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * .02,
                          ),
                          Text(
                            "Call us \n 24 * 7 available",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.2,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * .02,
              ),
              SizedBox(
                height: h * .1 / 1.5,
                width: w / 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: Text(
                    "View Term and conditions",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: h * .02,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
