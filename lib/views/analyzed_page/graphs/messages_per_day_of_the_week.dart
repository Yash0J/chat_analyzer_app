import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/title_text.dart';

class MessagesPerDayOfTheWeek extends StatefulWidget {
  const MessagesPerDayOfTheWeek({
    super.key,
  });

  @override
  State<MessagesPerDayOfTheWeek> createState() =>
      _MessagesPerDayOfTheWeekState();
}

class _MessagesPerDayOfTheWeekState extends State<MessagesPerDayOfTheWeek> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData("Mon", 305),
      SalesData("Tue", 208),
      SalesData("Wed", 304),
      SalesData("Thu", 302),
      SalesData("Fri", 300),
      SalesData("Sat", 450),
      SalesData("Sun", 420),
    ];
    return ListContainer(
      children: [
        SfCartesianChart(
            title: const ChartTitle(text: "Messages per day of the week"),
            primaryXAxis: const CategoryAxis(),
            series: <CartesianSeries>[
              // Renders line chart
              LineSeries<SalesData, String>(
                  dataSource: chartData,
                  xValueMapper: (SalesData sales, _) => sales.time,
                  yValueMapper: (SalesData sales, _) => sales.sales)
            ]),
      ],
    );
  }
}

class SalesData {
  SalesData(this.time, this.sales);
  final String time;
  final double sales;
}
// Message per month 
// MessagePerMonth
// message_per_month