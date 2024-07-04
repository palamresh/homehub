import 'package:flutter/material.dart';
import 'package:homehub/home_screen/add_screen.dart';

class BackupAndRestore extends StatefulWidget {
  const BackupAndRestore({super.key});

  @override
  State<BackupAndRestore> createState() => _BackupAndRestoreState();
}

class _BackupAndRestoreState extends State<BackupAndRestore> {
  final contianer_color = [
    Colors.green.withOpacity(.9),
    Colors.green.withOpacity(.9),
  ];

  final title = ["Smart Lamp", "Speker"];

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
            "Backup And Restore",
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
                              Transform.rotate(
                                angle: -1.5510,
                                child: Text(
                                  "Backup",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * .02,
                                  ),
                                ),
                              )
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
                          'https://tse2.mm.bing.net/th?id=OIP.-b4Pi9XA65ZNN6Il_h64MgHaG2&pid=Api&P=0&h=220',
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
                        "Backup",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: h * .02,
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
