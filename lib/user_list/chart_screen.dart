import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text(
            'Charts Screen',
            style: TextStyle(color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 20),
            const Text('Appliances Analysis',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                height: 300,
                width: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: PieChart(PieChartData(
                      centerSpaceRadius: 10,
                      borderData: FlBorderData(show: false),
                      sections: [
                        PieChartSectionData(
                            title: "Fan\n 15 kmh",
                            titleStyle: const TextStyle(color: Colors.white),
                            value: 10,
                            color: Colors.purple,
                            radius: 90),
                        PieChartSectionData(
                            title: "Lights\n 10 kmh",
                            titleStyle: const TextStyle(color: Colors.white),
                            value: 50,
                            color: Colors.blue,
                            radius: 90),
                        PieChartSectionData(
                            title: "Ac\n 25 kmh",
                            titleStyle: const TextStyle(color: Colors.white),
                            value: 13,
                            color: Colors.green,
                            radius: 90)
                      ])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
