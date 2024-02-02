import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/title_text.dart';

class MostUsedWords extends StatefulWidget {
  const MostUsedWords({
    super.key,
  });

  @override
  State<MostUsedWords> createState() => _MostUsedWordsState();
}

class _MostUsedWordsState extends State<MostUsedWords> {
  late List<_ChartData> data;

  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('bhai', 18),
      _ChartData('chall', 38),
      _ChartData('tu', 28),
      _ChartData('pagal', 8),
      _ChartData('sale', 48),
      _ChartData('baba', 28),
      _ChartData('devta', 68),
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
            title: const ChartTitle(text: "Most used words"),
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
//  
// most_used_words
// MostUsedWords