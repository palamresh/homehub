import 'package:flutter/material.dart';
import 'package:homehub/account_hub/user_profile.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isvalue = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign IN",
                style: TextStyle(color: Colors.white, fontSize: h * .03),
              ),
              Text(
                "Enter your email and password to get into the app.",
                style: TextStyle(color: Colors.white, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              Text(
                "Email",
                style: TextStyle(color: Colors.white38, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.white54)),
              ),
              SizedBox(
                height: h * .02,
              ),
              Text(
                "Password",
                style: TextStyle(color: Colors.white38, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white54)),
              ),
              SizedBox(
                height: h * .01,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "forgot Password",
                    style: TextStyle(fontSize: h * .02, color: Colors.red),
                  )),
              SizedBox(
                height: h * .02,
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
                              builder: (context) => UserProfileScreen()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: h * .02, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: h * .08,
            width: w * .4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * .06,
                  width: w * .2 / 1.3,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.network(
                      'https://tse4.mm.bing.net/th?id=OIP.GN1-R3cCXf-sQcQF6Zkt8AHaHa&pid=Api&P=0&h=220'),
                )
              ],
            ),
          ),
          Container(
            height: h * .08,
            width: w * .4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * .06,
                  width: w * .2 / 1.3,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.network(
                      'https://tse2.mm.bing.net/th?id=OIP.MHNWAEjX95uG3maQoGtZzAHaHa&pid=Api&P=0&h=220'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
