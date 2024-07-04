// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:homehub/controlling_monetring/help_and_support.dart';
import 'package:homehub/controlling_monetring/report_suspention.dart';

class NeighBourHood extends StatefulWidget {
  const NeighBourHood({super.key});

  @override
  State<NeighBourHood> createState() => _NeighBourHoodState();
}

class _NeighBourHoodState extends State<NeighBourHood> {
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
          "NeighBourHood Monitoring",
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              fit: BoxFit.cover,
                              "https://tse1.mm.bing.net/th?id=OIP.qljk19JWLbjLTNXWKAgyxwHaEa&pid=Api&P=0&h=220"),
                        ),
                      ),
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
                        color: Colors.greenAccent.withOpacity(.9)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NeighBourHood",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .03 / 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "📺 Camera On",
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
                  height: h * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuspiciousActivity()));
                        },
                        child: Container(
                            height: h * .08,
                            width: w / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.redAccent.withOpacity(.9)),
                            child: Center(
                                child: Icon(
                              Icons.error,
                              size: h * .06,
                              color: Colors.white,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HelpAndSupport()));
                        },
                        child: Container(
                            height: h * .08,
                            width: w / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green.withOpacity(.9)),
                            child: Center(
                                child: Icon(
                              Icons.account_box,
                              size: h * .06,
                              color: Colors.white,
                            ))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * .02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
