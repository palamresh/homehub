import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
          "Notification",
          style: TextStyle(
              fontSize: h * .02, color: Colors.white, letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: h * .1 / 1.1,
              width: w * 4,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * .1 / 1.8,
                        width: w / 4 / 1.6,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          'https://tse2.mm.bing.net/th?id=OIP.PN6WUcFi8BlnJyodq2aaMgHaHa&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorDodge,
                          height: h * .04,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Humiditor is on ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                        ),
                      ),
                      Text(
                        "from 1 hour ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mark and Read",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02 / 1.3,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Container(
              height: h * .1 / 1.1,
              width: w * 4,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * .1 / 1.8,
                        width: w / 4 / 1.6,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          'https://tse1.mm.bing.net/th?id=OIP.x0d4vII2zdlyTnWwGka3jAHaHa&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorDodge,
                          height: h * .04,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All fan on ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                        ),
                      ),
                      Text(
                        "bedroom 2 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mark and Read",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02 / 1.3,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Container(
              height: h * .1 / 1.1,
              width: w * 4,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * .1 / 1.8,
                        width: w / 4 / 1.6,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          'https://tse2.mm.bing.net/th?id=OIP.4RVIk6nP4OxgIoVYhoAnwgHaH_&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorDodge,
                          height: h * .04,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All light on ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                        ),
                      ),
                      Text(
                        "bedroom-1 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mark and Read",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02 / 1.3,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Container(
              height: h * .1 / 1.1,
              width: w * 4,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * .1 / 1.8,
                        width: w / 4 / 1.6,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          'https://tse2.mm.bing.net/th?id=OIP.PN6WUcFi8BlnJyodq2aaMgHaHa&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorDodge,
                          height: h * .04,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Humiditor is on ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                        ),
                      ),
                      Text(
                        "bedroom 3 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * .02 / 1.3,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mark and Read",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02 / 1.3,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
