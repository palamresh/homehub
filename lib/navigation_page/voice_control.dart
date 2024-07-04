// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class VoiceControll extends StatefulWidget {
  const VoiceControll({super.key});

  @override
  State<VoiceControll> createState() => _VoiceControllState();
}

class _VoiceControllState extends State<VoiceControll> {
  late List<Color> color = [Colors.blue, Colors.yellow];
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
          "Voice Control",
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
                    border: const OutlineInputBorder(),
                    hintText: "Search",
                    labelText: "Search device you want to control",
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: h * .02 / 1.3,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                "Or",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Control your device with your voice.",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02 / 1.1,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: h * .03,
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const SweepGradient(
                    colors: [Colors.orange, Colors.blue, Colors.green],
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: SpinKitSpinningLines(
                  size: h * .2,
                  color: Colors
                      .purple, // The color property is still required but won't be used
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
