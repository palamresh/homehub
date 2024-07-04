// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Update Your Profile",
          style: TextStyle(
              fontSize: h * .02, color: Colors.white, letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_box_outlined,
                    size: h * .04,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Welcome Home ",
                  style: TextStyle(color: Colors.white, fontSize: h * .02),
                ),
                subtitle: Text(
                  "Harsh ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: h * .02,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Full Name ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: h * .02,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Harsh",
                  suffixIcon: Icon(
                    Icons.edit,
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
              height: h * .01,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Email Address ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: h * .02,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "harsh@gmail.com",
                  suffixIcon: Icon(
                    Icons.edit,
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
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Password",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: h * .02,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "xxxxxxx",
                  suffixIcon: Icon(
                    Icons.edit,
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
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Save And Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                          fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
