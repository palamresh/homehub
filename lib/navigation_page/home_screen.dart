import 'package:flutter/material.dart';
import 'package:homehub/home_screen/add_screen.dart';
import 'package:homehub/profile_update/edit_profile.dart';
import 'package:homehub/profile_update/notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final contianer_color = [
    Colors.green.withOpacity(.9),
    Colors.green.withOpacity(.9),
    Colors.white.withOpacity(.2),
    Colors.green.withOpacity(.9),
  ];

  final isTrue = [
    false,
    false,
    true,
    false,
  ];

  final title = ["Living Room", "Speker", "Air Conditioner", "Humidifier"];

  final room_image = [
    'https://tse3.mm.bing.net/th?id=OIP.tbw2M8kpkH_j5sw1J48-GAHaHa&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.-b4Pi9XA65ZNN6Il_h64MgHaG2&pid=Api&P=0&h=220',
    'https://tse1.mm.bing.net/th?id=OIF.nyZR7tGVSKPrTIXsDO3lbQ&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.2vknZrZXhjll5Lf_e4EoZQHaHa&pid=Api&P=0&h=220',
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
            icon: Icon(
              Icons.account_box_outlined,
              size: h * .04,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => NotificationScreen()));
                },
                icon: Icon(
                  Icons.notifications,
                  size: h * .03,
                  color: Colors.white,
                ))
          ],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Home ",
                style: TextStyle(color: Colors.white, fontSize: h * .02),
              ),
              Text(
                "Harsh ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: h * .02,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .01,
            ),
            Container(
              height: h * .2 / 1.4,
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
                        height: h * .1 / 1.3,
                        width: w / 4 / 1.4,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          'https://tse4.mm.bing.net/th?id=OIP.OmM-8JXak2Y_4Bnu_db7wgHaHa&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorDodge,
                          height: h * .06,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Party Cloud",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                        ),
                      ),
                      Text(
                        "23 °C ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * .02,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Humidity",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                        ),
                      ),
                      Text(
                        "67%",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * .02,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.2, crossAxisCount: 2),
                  itemBuilder: (contex, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      height: h * 5,
                      width: w * .2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: contianer_color[index],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: h * .1,
                                width: w * .2 / 1.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    room_image[index],
                                    height: h * .2,
                                  ),
                                ),
                              ),
                              Transform.rotate(
                                  angle: -1.5510,
                                  child: Switch(
                                      activeTrackColor: Colors.black,
                                      activeColor: Colors.green,
                                      hoverColor: Colors.blue,
                                      value: isTrue[index],
                                      onChanged: (bool? value) {
                                        setState(() {});
                                        isTrue[index] = value!;
                                      }))
                            ],
                          ),
                          SizedBox(
                            height: h * .04,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * .02,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Living Room",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: h * .02,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddScreen()));
                },
                child: Text(
                  "Add Device",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: h * .02,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
