import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/body_text.dart';
import '../widgets/description_text.dart';
import 'color.dart';

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Appcolor.quaternary.withOpacity(0.4),
      thickness: 2,
      indent: 5,
      endIndent: 5,
    );
  }
}

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    this.headText,
    this.bodyText,
    this.children,
    this.overflow,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;
  final String? headText;
  final String? bodyText;
  final List<Widget>? children;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 41.w,
      height: height ?? 18.h,
      decoration: BoxDecoration(
        // color: Appcolor.navy.withOpacity(0.),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Appcolor.navy.withOpacity(0.05),
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextBodyLarge(
            text: headText ?? "headText",
            textAlign: TextAlign.center,
            color: Appcolor.navy,
            fontWeight: FontWeight.w700,
            size: 18,
          ),
          TextBodyMedium(
            text: bodyText ?? "bodyText",
            overflow: overflow ?? TextOverflow.clip,
            textAlign: TextAlign.center,
            // color: Appcolor.black,
          ),
          if (children != null)
            ...children!, // adds widgits from list<children> into children of column
        ],
      ),
    );
  }
}

class StatusTile extends StatelessWidget {
  const StatusTile({
    super.key,
    this.title,
    this.children,
  });

  final String? title;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 10.h,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextDescriptionLarge(
                text: title ?? "Most used words",
                color: Appcolor.navy,
                fontWeight: FontWeight.w700,
              ),
              if (children != null)
                ...children!, // adds widgits from list<children> into children of column
            ],
          ),
        ),
        const GreyDivider(),
      ],
    );
  }
}
