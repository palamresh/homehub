import 'package:flutter/material.dart';
import 'package:homehub/curved_navigation/curved.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final color = [
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.green,
    Colors.white.withOpacity(.2)
  ];

  final title = ["User - 1", "User - 2", "Guest", "Add User"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "User Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(10),
        height: h * .4,
        width: w * 3,
        // color: Colors.white,
        child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.5,
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 0),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Container(
                  // margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: color[index]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_box,
                        size: h * .05,
                        color: Colors.white,
                      ),
                      Text(
                        title[index],
                        style:
                            TextStyle(fontSize: h * .02, color: Colors.white),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
