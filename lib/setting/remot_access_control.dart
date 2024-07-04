import 'package:flutter/material.dart';

class RemoteAccessControll extends StatefulWidget {
  const RemoteAccessControll({super.key});

  @override
  State<RemoteAccessControll> createState() => _RemoteAccessControllState();
}

class _RemoteAccessControllState extends State<RemoteAccessControll> {
  final contianer_color = [
    Colors.white.withOpacity(.9),
    Colors.white.withOpacity(.9),
  ];

  final title = ["Smart lamp", "Add More"];

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
            "Remote Access Control",
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
          ],
        ),
      ),
    );
  }
}
