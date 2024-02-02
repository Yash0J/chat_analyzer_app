import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/title_text.dart';

class MessagePerMonth extends StatefulWidget {
  const MessagePerMonth({
    super.key,
  });

  @override
  State<MessagePerMonth> createState() => _MessagePerMonthState();
}

class _MessagePerMonthState extends State<MessagePerMonth> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData("Jan", 35),
      SalesData("Fab", 28),
      SalesData("Mar", 34),
      SalesData("Apr", 32),
      SalesData("May", 30),
      SalesData("Jun", 45),
      SalesData("Jul", 42),
      SalesData("Aug", 57),
      SalesData("Sep", 52),
      SalesData("Oct", 77),
      SalesData("Nov", 67),
      SalesData("Dec", 82),
    ];
    return ListContainer(
      children: [
        SfCartesianChart(
            title: const ChartTitle(text: "Message per month"),
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