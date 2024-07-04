import 'package:flutter/material.dart';
import 'package:homehub/curved_navigation/curved.dart';

class ConnectNewDevice extends StatefulWidget {
  const ConnectNewDevice({super.key});

  @override
  State<ConnectNewDevice> createState() => _ConnectNewDeviceState();
}

class _ConnectNewDeviceState extends State<ConnectNewDevice> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Connect Your Devices",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * .02,
              ),
              Container(
                height: h * .2 / 1.7,
                width: w * 4,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: h * .09,
                      width: w / 4,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        'https://tse4.mm.bing.net/th?id=OIP.DvPWNS0c_R67SvSlQRzblgHaHa&pid=Api&P=0&h=220',
                        height: h * .1 / 1.4,
                        width: w / 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "My House",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: h * .02,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search",
                  labelText: "Search",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  labelStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Current device nearby",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: h * .02,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * .02,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://tse3.mm.bing.net/th?id=OIP.9VaDvPwo3YchMB2nZPMxMwHaFj&pid=Api&P=0&h=220'),
                ),
                title: Text(
                  "Smart lamp",
                  style: TextStyle(
                      fontSize: h * .02,
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "🟢 connected",
                  style: TextStyle(
                      fontSize: h * .02 / 1.6,
                      color: Colors.green,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.minimize,
                    color: Colors.white,
                    size: h * .03,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://tse1.mm.bing.net/th?id=OIP.Xj4G2MEYL-YVVXvNDJInegHaEK&pid=Api&P=0&h=220'),
                ),
                title: Text(
                  "Speaker",
                  style: TextStyle(
                      fontSize: h * .02,
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "⚪ not connected",
                  style: TextStyle(
                      fontSize: h * .02 / 1.6,
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: h * .03,
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: h * .04,
              ),
              SizedBox(
                height: h * .06,
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigationScreen()));
                    },
                    child: Text(
                      "Continue",
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
