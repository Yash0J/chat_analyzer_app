import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/title_text.dart';

class MessagePerHourOfDay extends StatefulWidget {
  const MessagePerHourOfDay({
    super.key,
  });

  @override
  State<MessagePerHourOfDay> createState() => _MessagePerHourOfDayState();
}

class _MessagePerHourOfDayState extends State<MessagePerHourOfDay> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2022, 1, 1, 00), 235),
      SalesData(DateTime(2022, 1, 1, 01), 352),
      SalesData(DateTime(2022, 1, 1, 02), 124),
      SalesData(DateTime(2022, 1, 1, 03), 435),
      SalesData(DateTime(2022, 1, 1, 04), 552),
      SalesData(DateTime(2022, 1, 1, 05), 124),
      SalesData(DateTime(2022, 1, 1, 06), 185),
      SalesData(DateTime(2022, 1, 1, 07), 235),
      SalesData(DateTime(2022, 1, 1, 08), 352),
      SalesData(DateTime(2022, 1, 1, 09), 424),
      SalesData(DateTime(2022, 1, 1, 10), 585),
      SalesData(DateTime(2022, 1, 1, 11), 635),
      SalesData(DateTime(2022, 1, 1, 12), 235),
      SalesData(DateTime(2022, 1, 1, 13), 352),
      SalesData(DateTime(2022, 1, 1, 14), 124),
      SalesData(DateTime(2022, 1, 1, 15), 391),
      SalesData(DateTime(2022, 1, 1, 16), 435),
      SalesData(DateTime(2022, 1, 1, 17), 552),
      SalesData(DateTime(2022, 1, 1, 18), 635),
      SalesData(DateTime(2022, 1, 1, 19), 235),
      SalesData(DateTime(2022, 1, 1, 20), 352),
      SalesData(DateTime(2022, 1, 1, 21), 185),
      SalesData(DateTime(2022, 1, 1, 22), 435),
      SalesData(DateTime(2022, 1, 1, 23), 552),
    ];
    return ListContainer(
      children: [
        SfCartesianChart(
            title: const ChartTitle(text: "Message per hour of day "),
            primaryXAxis: const DateTimeAxis(),
            series: <CartesianSeries>[
              // Renders line chart
              LineSeries<SalesData, DateTime>(
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
  final DateTime time;
  final double sales;
}
