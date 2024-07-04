import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  final contianer_color = [
    Colors.white.withOpacity(.9),
    Colors.white.withOpacity(.9),
  ];

  final title = ["Smart lamp", "Speker"];

  final room_image = [
    'https://tse3.mm.bing.net/th?id=OIP.tbw2M8kpkH_j5sw1J48-GAHaHa&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.-b4Pi9XA65ZNN6Il_h64MgHaG2&pid=Api&P=0&h=220',
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            "Living Room",
            style: TextStyle(color: Colors.white, fontSize: h * .02),
          )),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .01,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 2,
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
                              // Transform.rotate(
                              //   angle: -1.5510,
                              //   child: Text(
                              //     "Backup",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //       fontSize: h * .02,
                              //     ),
                              //   ),
                              // )
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
                                    color: Colors.black,
                                    fontSize: h * .02,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Living Room",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h * .2 / 1.8,
                width: w * 2 / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(.10)),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.electric_bolt,
                      size: h * .03,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Current Temprature \n in the living room",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "24°C",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * .02,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AddScreen()));
                },
                child: Text(
                  "See More",
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
