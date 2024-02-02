import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/title_text.dart';

class DaysWithMostMessage extends StatefulWidget {
  const DaysWithMostMessage({
    super.key,
  });

  @override
  State<DaysWithMostMessage> createState() => _DaysWithMostMessageState();
}

class _DaysWithMostMessageState extends State<DaysWithMostMessage> {
  late List<_ChartData> data;

  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Monday', 92),
      _ChartData('Tuesday', 85),
      _ChartData('Wednesday', 70),
      _ChartData('Thursday', 46),
      _ChartData('Friday', 54),
      _ChartData('Saturday', 94),
      _ChartData('Sunday', 134),
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
            title: const ChartTitle(text: "Days with most message"),
            primaryXAxis: CategoryAxis(
              labelPosition: ChartDataLabelPosition.inside,
              labelRotation: 90,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            primaryYAxis: const NumericAxis(minimum: 0, interval: 25),
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