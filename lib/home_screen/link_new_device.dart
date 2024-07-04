import 'package:flutter/material.dart';
import 'package:homehub/home_screen/connect_your_device.dart';

class LinkNewDevice extends StatefulWidget {
  const LinkNewDevice({super.key});

  @override
  State<LinkNewDevice> createState() => _LinkNewDeviceState();
}

class _LinkNewDeviceState extends State<LinkNewDevice> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Column(
            children: [
              Text(
                "Link New Device",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "connect with your space",
                style: TextStyle(color: Colors.white, fontSize: h * .02),
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Stack(
                children: [
                  Container(
                    height: h * .3,
                    width: w / 1.4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(.3)),
                  ),
                  Positioned(
                    top: 20,
                    left: 43,
                    child: Container(
                      height: h * .3 / 1.2,
                      width: w / 1.4 / 1.4,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.2)),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 35,
                    child: Container(
                      height: h * .3 / 1.6,
                      width: w / 1.4 / 1.3,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.6)),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          height: h * .1,
                          "https://tse2.mm.bing.net/th?id=OIP.ez_LsyI6tirCDauhRN521wHaME&pid=Api&P=0&h=220"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              "What is your device name?",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: h * .02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: h * .02,
            ),
            Container(
              height: h * .1 / 1.5,
              width: w * 4,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Smart Lamp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: h * .02,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              "Where is your device located?",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: h * .02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: h * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .1 / 1.5,
                  width: w / 3,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent.withOpacity(.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Living room",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .02,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * .1 / 1.5,
                  width: w / 4,
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "kitchen",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .02,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * .1 / 1.5,
                  width: w / 4,
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Bedroom",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: h * .02,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .03,
            ),
            SizedBox(
              height: h * .06,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConnectNewDevice()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: h * .02, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
