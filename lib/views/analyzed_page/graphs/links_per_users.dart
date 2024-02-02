import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/title_text.dart';

class LinksPerUsers extends StatefulWidget {
  const LinksPerUsers({
    super.key,
  });

  @override
  State<LinksPerUsers> createState() => _LinksPerUsersState();
}

class _LinksPerUsersState extends State<LinksPerUsers> {
  late List<_ChartData> data;

  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Yash', 12),
      _ChartData('Harshit', 15),
      _ChartData('Gaurav', 30),
      _ChartData('Anu', 6),
      _ChartData('Sumit', 14),
      _ChartData('Vikas', 24),
      _ChartData('Kushal', 34),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListContainer(
      children: [
        // const TextTitleLarge(text: "Media file per user"),
        SfCartesianChart(
            title: const ChartTitle(text: "Links per users"),
            primaryXAxis: CategoryAxis(
              labelPosition: ChartDataLabelPosition.inside,
              labelRotation: 90,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            primaryYAxis:
                const NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: _tooltip,
            series: <CartesianSeries<_ChartData, String>>[
              ColumnSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: 'Shared Media file',
                  color: Appcolor.blue)
            ]),
      ],
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
// Messages per day of the week
// MessagesPerDayOfTheWeek
// messages_per_day_of_the_week