// ignore_for_file: unused_local_variable

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class SceneCreation extends StatefulWidget {
  const SceneCreation({super.key});

  @override
  State<SceneCreation> createState() => _SceneCreationState();
}

class _SceneCreationState extends State<SceneCreation> {
  TimeOfDay _selectedTime = TimeOfDay.now();

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
          "Scene's Creation",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'How often do you want  it to be?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.1,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: h * .06,
                        width: w / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.10),
                        ),
                        child: Center(
                          child: Text(
                            'Every Day',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: h * .06,
                        width: w / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(.10)),
                        child: Center(
                          child: Text(
                            'Week Day',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: h * .06,
                        width: w / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow.withOpacity(.9)),
                        child: Center(
                          child: Text(
                            'Custome Date',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: h * .02 / 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                ],
              ),
              Divider(),
              EasyDateTimeLine(
                activeColor: Colors.white,
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {},
                headerProps: const EasyHeaderProps(
                  monthStyle: TextStyle(color: Colors.white),
                  selectedDateStyle: TextStyle(color: Colors.white),
                  monthPickerType: MonthPickerType.switcher,
                  dateFormatter: DateFormatter.fullDateDMY(),
                ),
                dayProps: const EasyDayProps(
                  dayStructure: DayStructure.dayStrDayNum,
                  inactiveDayNumStyle: TextStyle(color: Colors.white),
                  activeDayStyle: DayStyle(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      // color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff3371FF),
                          Color(0xff8426D6),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Working Time',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .03 / 1.5,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Select the desired time interval',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.1,
                      fontWeight: FontWeight.w500),
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
                    style: TextStyle(fontSize: h * .02, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () => _selectTime(context),
                    child: Text('Select Time',
                        style:
                            TextStyle(fontSize: h * .02, color: Colors.blue)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  height: h * .06,
                  width: w / 4,
                  child: TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style:
                            TextStyle(fontSize: h * .02, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
