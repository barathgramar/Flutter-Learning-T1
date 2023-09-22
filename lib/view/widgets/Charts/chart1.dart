import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Chart1 extends StatefulWidget {
  const Chart1({super.key});
  @override
  State createState() => _Chart1State();
}

class _Chart1State extends State<Chart1> {
  List<_SalesData> data = [
    _SalesData('Sun', 20),
    _SalesData('Mon', 0),
    _SalesData('Tue', 30),
    _SalesData('Wed', 45),
    _SalesData('Thu', 25),
    _SalesData('Fri', 50),
    _SalesData('Sat', 75)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.only(top: 20, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<_SalesData, String>>[
            LineSeries<_SalesData, String>(
              color: Colors.red,
              dataSource: data,
              xValueMapper: (_SalesData sales, _) => sales.day,
              yValueMapper: (_SalesData sales, _) => sales.cal,
              // dataLabelSettings: DataLabelSettings(isVisible: true))
            )
          ]),
    );
  }
}

class _SalesData {
  _SalesData(this.day, this.cal);

  final String day;
  final double cal;
}
