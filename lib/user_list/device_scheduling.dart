// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:homehub/curved_navigation/curved.dart';

class DeviceScheduling extends StatefulWidget {
  const DeviceScheduling({super.key});

  @override
  State<DeviceScheduling> createState() => _DeviceSchedulingState();
}

class _DeviceSchedulingState extends State<DeviceScheduling> {
  final _controller = ValueNotifier<bool>(false);

  TimeOfDay _selectedTime = TimeOfDay.now();
  double _currentSliderValue = 70;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Device Scheduling",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h * .9 / 1.5,
                  width: w * 4 / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            "Speaker",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "Living Room",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.5,
                                fontWeight: FontWeight.w800),
                          ),
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://tse2.mm.bing.net/th?id=OIP.-b4Pi9XA65ZNN6Il_h64MgHaG2&pid=Api&P=0&h=220'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontSize: h * .02 / 1.2,
                                    fontWeight: FontWeight.w800),
                              ),
                              AdvancedSwitch(
                                controller: _controller,
                                activeColor: Colors.blue,
                                inactiveColor: Colors.black,
                                activeChild: const Text('ON'),
                                inactiveChild: const Text('OFF'),
                                // activeImage: AssetImage('assets/images/on.png'),
                                // inactiveImage:
                                //   AssetImage('assets/images/off.png'),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                width: w / 6,
                                height: 30.0,
                                enabled: true,
                                disabledOpacity: 0.5,
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Volume",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.2,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(),
                          width: double.infinity,
                          child: Stack(
                            children: [
                              SliderTheme(
                                data: SliderThemeData(
                                  activeTrackColor: Colors.blue,
                                  inactiveTrackColor: Colors.grey,
                                  thumbColor: Colors.white,
                                  thumbShape: SliderComponentShape.noOverlay,
                                  overlayShape: SliderComponentShape.noOverlay,
                                  valueIndicatorShape:
                                      SliderComponentShape.noOverlay,
                                  trackHeight: 50,
                                  // trackShape:
                                  //     const RectangularSliderTrackShape()
                                ),
                                child: Slider(
                                  value: _currentSliderValue,
                                  min: 0,
                                  max: 100,
                                  divisions: 100,
                                  label: _currentSliderValue.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Icon(
                                    Icons.volume_up,
                                    color: Colors.black,
                                    size: h * .03,
                                  )),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Text(
                                  '${_currentSliderValue.round()}%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: h * .02,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                left: 50,
                                child: SizedBox(
                                  width: w * .6,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        _currentSliderValue.round(), (index) {
                                      if (index % 5 == 0) {
                                        return Container(
                                          width: 5,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.green,
                                                Colors.yellow
                                              ],
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Container(
                                            width: 0,
                                            height:
                                                0); // Empty container for spacing
                                      }
                                    }),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * .02,
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Set Schedule",
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontSize: h * .02 / 1.2,
                                    fontWeight: FontWeight.w800),
                              ),
                              AdvancedSwitch(
                                controller: _controller,
                                activeColor: Colors.blue,
                                inactiveColor: Colors.black,
                                activeChild: const Text('ON'),
                                inactiveChild: const Text('OFF'),
                                // activeImage: AssetImage('assets/images/on.png'),
                                // inactiveImage:
                                //   AssetImage('assets/images/off.png'),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                width: w / 6,
                                height: 30.0,
                                enabled: true,
                                disabledOpacity: 0.5,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Time on',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: h * .02 / 1.1,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' ${_selectedTime.format(context)}',
                              style: TextStyle(
                                  fontSize: h * .02, color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () => _selectTime(context),
                              child: Text('Select Time',
                                  style: TextStyle(
                                      fontSize: h * .02, color: Colors.blue)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              SizedBox(
                height: h * .06,
                width: w / 4,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigationScreen()));
                    },
                    child: Text(
                      "Done",
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
