import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/constants/color.dart';

class AnalyzedScreen extends StatefulWidget {
  const AnalyzedScreen({super.key});

  @override
  State<AnalyzedScreen> createState() => _AnalyzedScreenState();
}

class _AnalyzedScreenState extends State<AnalyzedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Appcolor.primary,
                    // spreadRadius: 0.5,
                    blurRadius: 7,
                  ),
                ],
                gradient: LinearGradient(colors: [
                  Appcolor.primary,
                  Appcolor.secondry,
                ]),
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(23)),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
