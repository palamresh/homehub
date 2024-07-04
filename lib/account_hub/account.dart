import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:homehub/account_hub/sign_in.dart';
import 'package:homehub/account_hub/sign_up.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * .4 / 1.1,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Image.network(
                'https://images.pexels.com/photos/271816/pexels-photo-271816.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: height * .03,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Home ',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.yellow.shade700,
                      fontSize: height * .03)),
              TextSpan(
                  text: 'Hub',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * .03,
                      fontWeight: FontWeight.w900)),
            ]),
          ),
          SizedBox(
            height: height * .03,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * .06,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Create Account",
                    style:
                        TextStyle(fontSize: height * .02, color: Colors.white),
                  )),
            ),
          ),
          SizedBox(
            height: height * .03,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * .06,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.blue)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "Sign In",
                    style:
                        TextStyle(fontSize: height * .02, color: Colors.blue),
                  )),
            ),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text(
            "Sign in With",
            style: TextStyle(
              fontSize: height * .02,
            ),
          ),
          SizedBox(
            height: height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height * .08,
                width: width * .4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * .06,
                      width: width * .2 / 1.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                          'https://tse4.mm.bing.net/th?id=OIP.GN1-R3cCXf-sQcQF6Zkt8AHaHa&pid=Api&P=0&h=220'),
                    )
                  ],
                ),
              ),
              Container(
                height: height * .08,
                width: width * .4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * .06,
                      width: width * .2 / 1.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                          'https://tse2.mm.bing.net/th?id=OIP.MHNWAEjX95uG3maQoGtZzAHaHa&pid=Api&P=0&h=220'),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
