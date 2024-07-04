// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class NewSpace extends StatefulWidget {
  const NewSpace({super.key});

  @override
  State<NewSpace> createState() => _NewSpaceState();
}

class _NewSpaceState extends State<NewSpace> {
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
          "Create a new space",
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
                  child: Container(
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
                ),
                SizedBox(
                  height: h * .03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "What is your house name?",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: h * .02,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "House Name",
                      labelText: "House Name",
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
                  child: Text(
                    "No inspiration? try one of these names",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: h * .02,
                        fontWeight: FontWeight.w600),
                  ),
                ),
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
                              color: Colors.white.withOpacity(.10)),
                          child: Center(
                            child: Text(
                              'Home',
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
                              'office',
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
                          width: w / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(.10)),
                          child: Center(
                            child: Text(
                              'My Happy Place',
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
                          "Continue",
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
