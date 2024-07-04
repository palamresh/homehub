import 'package:flutter/material.dart';
import 'package:homehub/controlling_monetring/cctv_monetring.dart';
import 'package:homehub/controlling_monetring/neighbourhood.dart';

class ControllingAndMonetring extends StatefulWidget {
  const ControllingAndMonetring({super.key});

  @override
  State<ControllingAndMonetring> createState() =>
      _ControllingAndMonetringState();
}

class _ControllingAndMonetringState extends State<ControllingAndMonetring> {
  final title = [
    'CCTV Monitoring',
    "NeighBourhood Watching",
  ];

  final route = [
    const CCTVMonetring(),
    const NeighBourHood(),
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
          "Controlling and Monitoring",
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
                itemCount: 2,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => route[index]));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
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
