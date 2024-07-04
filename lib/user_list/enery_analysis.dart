// ignore_for_file: unused_local_variable

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:homehub/user_list/chart_screen.dart';

class EnergyAnalysis extends StatefulWidget {
  const EnergyAnalysis({super.key});

  @override
  State<EnergyAnalysis> createState() => _EnergyAnalysisState();
}

class _EnergyAnalysisState extends State<EnergyAnalysis> {
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
          "Energy Analysis",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h * .03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h * .2 / 1.8,
                width: w * 2 / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(.10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChartsScreen()));
                    },
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.electric_bolt,
                      color: Colors.yellow,
                      size: h * .04,
                    ),
                    title: Text(
                      "50Kmh",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: h * .03,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "Electricity Usage this month.",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: h * .02,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              width: 350,
              child: LineChart(
                LineChartData(
                    titlesData: LineTiles.getTileData(),
                    minX: 0,
                    maxX: 7,
                    minY: 0,
                    maxY: 8,
                    gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(color: Colors.white.withOpacity(.1));
                        },
                        getDrawingVerticalLine: (value) {
                          return FlLine(color: Colors.transparent);
                        }),
                    borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.transparent)),
                    lineBarsData: [
                      LineChartBarData(
                          belowBarData: BarAreaData(
                              show: true, color: Colors.white.withOpacity(.1)),
                          isCurved: true,
                          spots: [
                            FlSpot(0, 3),
                            FlSpot(1.3, 6),
                            FlSpot(3, 3),
                            FlSpot(5, 6),
                            FlSpot(7, 4),
                          ])
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LineTiles {
  static getTileData() => FlTitlesData(
        show: true,
        leftTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 50,
          getTitlesWidget: (value, meta) {
            const style = TextStyle(
              color: Colors.white54,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            );

            Widget text;
            switch (value.toInt()) {
              case 1:
                text = Text('0 KM', style: style);
                break;
              case 2:
                text = Text('5 KM', style: style);
                break;
              case 3:
                text = Text('10 KM', style: style);
                break;
              case 4:
                text = Text('15 KM', style: style);
                break;
              case 5:
                text = Text('20 KM', style: style);
                break;
              case 6:
                text = Text('25 KM', style: style);
                break;
              case 7:
                text = Text('30KM', style: style);
                break;
              default:
                text = Text('');
                break;
            }
            return SideTitleWidget(
              axisSide: meta.axisSide,
              space: 8,
              child: text,
            );
          },
        )),
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTitlesWidget: (value, meta) {
            const style = TextStyle(
              color: Colors.white54,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            );
            Widget text;
            switch (value.toInt()) {
              case 1:
                text = Center(child: Text('M', style: style));
                break;
              case 2:
                text = Text('T', style: style);
                break;
              case 3:
                text = Text('W', style: style);
                break;
              case 4:
                text = Text('T', style: style);
                break;
              case 5:
                text = Text('F', style: style);
                break;
              case 6:
                text = Text('S', style: style);
                break;
              case 7:
                text = Text('S', style: style);
                break;
              default:
                text = Text('');
                break;
            }
            return SideTitleWidget(
              axisSide: meta.axisSide,
              space: 8,
              child: text,
            );
          },
        )),
      );
}
