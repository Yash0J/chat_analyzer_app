import 'package:chat_analyzer_app/utils/constants/color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GraphTabbarView extends StatefulWidget {
  const GraphTabbarView({super.key});

  @override
  State<GraphTabbarView> createState() => _GraphTabbarViewState();
}

class _GraphTabbarViewState extends State<GraphTabbarView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1.h),
            const Text('Tab 3 Content'),
            SizedBox(
                width: 90.w,
                height: 90.w,
                child: RadarChart(
                  RadarChartData(
                    radarBackgroundColor: Appcolor.primary,
                    radarShape: RadarShape.polygon,
                    radarBorderData:
                        BorderSide(width: 2, color: Appcolor.black),
                    // getTitle:(index, angle) {},
                    titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                    tickCount: 6,
                    tickBorderData: BorderSide(width: 1, color: Appcolor.black),
                    borderData: FlBorderData(
                      border: Border.all(width: 2, color: Appcolor.primary),
                    ),
                    dataSets: [
                      RadarDataSet(
                        dataEntries: [
                          const RadarEntry(value: 10),
                          const RadarEntry(value: 18),
                          const RadarEntry(value: 8),
                          const RadarEntry(value: 22),
                        ],
                      ),
                    ],
                  ),
                  swapAnimationDuration:
                      const Duration(milliseconds: 150), // Optional
                  swapAnimationCurve: Curves.linear, // Optional
                )),
            SizedBox(
                width: 90.w,
                height: 90.w,
                child: PieChart(
                  PieChartData(
                    centerSpaceColor: Appcolor.quaternary,
                    sections: [PieChartSectionData()],

                    // read about it in the PieChartData section
                  ),
                  swapAnimationDuration:
                      const Duration(milliseconds: 150), // Optional
                  swapAnimationCurve: Curves.linear, // Optional
                )),
          ],
        ),
      ),
    );
  }
}
