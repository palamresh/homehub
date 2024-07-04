import 'package:flutter/material.dart';
import 'package:homehub/account_hub/user_profile.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isvalue = false;

  void showdialog(
    var h,
    var w,
  ) {
    showDialog(
        //barrierColor: Colors.blue.shade400,
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blueAccent.withOpacity(.5),
            content: Container(
              // color:
              height: h * .4,
              width: w * .8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: h * .2 / 1.4,
                    width: w * .3,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: h * .1 / 1.5,
                          width: w * .2 / 1.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Icon(
                              Icons.done,
                              size: h * .04,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * .06,
                  ),
                  Text(
                    "Congratulation!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: h * .03 / 1.3,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: h * .02,
                  ),
                  Text(
                    "You have create your account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: h * .02 / 1.1,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: h * .05,
                  ),
                  SizedBox(
                    height: h * .06,
                    width: w * .4,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const UserProfileScreen()));
                        },
                        child: Text(
                          "Get Started",
                          style:
                              TextStyle(fontSize: h * .02, color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          );
        });
  }

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
          "Sign Up",
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
                "Create Account",
                style: TextStyle(color: Colors.white, fontSize: h * .03),
              ),
              Text(
                "Looks like you don't have an account. Let's create a new account for you.",
                style: TextStyle(color: Colors.white, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              Text(
                "Full Name",
                style: TextStyle(color: Colors.white38, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Name",
                    hintStyle: const TextStyle(color: Colors.white54)),
              ),
              SizedBox(
                height: h * .02,
              ),
              Text(
                "Email",
                style: TextStyle(color: Colors.white38, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Email",
                    hintStyle: const TextStyle(color: Colors.white54)),
              ),
              SizedBox(
                height: h * .02,
              ),
              Text(
                "Phone Number",
                style: TextStyle(color: Colors.white38, fontSize: h * .02),
              ),
              SizedBox(
                height: h * .01,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "7845253625",
                    hintStyle: const TextStyle(color: Colors.white54)),
              ),
              SizedBox(
                height: h * .02,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Password",
                    hintStyle: const TextStyle(color: Colors.white54)),
              ),
              SizedBox(
                height: h * .02,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isvalue,
                    onChanged: (bool? value) {
                      setState(() {
                        isvalue = value!;
                      });
                    },
                  ),
                  SizedBox(
                    height: h * .02,
                  ),
                  Text(
                    "I accept term and condition.",
                    style: TextStyle(color: Colors.white54, fontSize: h * .02),
                  )
                ],
              ),
              SizedBox(
                height: h * .07,
              ),
              SizedBox(
                height: h * .06,
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      showdialog(h, w);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Sign Up",
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
