import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';
import '../../utils/widgets/headline_text.dart';
import '../analyzed_page/analyzed.dart';
import 'tab_views/graph_view.dart';
import 'tab_views/info_view.dart';
import 'tab_views/stats_view.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: TextHeadlineMedium(
              text: 'diff " " Result page', color: Appcolor.white),
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnalyzedScreen())),
              icon: const Icon(Icons.help_outline_rounded),
            ),
          ],
        ),
        body: Column(
          children: [
            topTabbar(context),
            // SizedBox(height: 1.h),
            tabBarView(),
          ],
        ),
      ),
    );
  }

  Widget topTabbar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Appcolor.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            color: Appcolor.quaternary,
            spreadRadius: 0,
            blurRadius: 3,
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Appcolor.quaternary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TabBar(
          automaticIndicatorColorAdjustment: true,
          physics: const ClampingScrollPhysics(),
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: const EdgeInsets.symmetric(horizontal: 20),
          splashBorderRadius: BorderRadius.circular(50),
          indicatorColor: Appcolor.primary,
          indicator: BoxDecoration(
            // color: Appcolor.primary,
            color: Appcolor.primary,
            border:
                Border.all(width: 2, color: Appcolor.white.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(50),
          ),
          labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Appcolor.black,
                fontSize: 18,
              ),
          tabs: const [
            Tab(text: 'Info'),
            Tab(text: 'Stats'),
            Tab(text: 'Graphs'),
          ],
        ),
      ),
    );
  }

  Widget tabBarView() {
    return const Expanded(
      child: TabBarView(
        children: [
          InfoTabbarView(),
          StatsTabbarView(),
          GraphTabbarView(),
        ],
      ),
    );
  }
}
