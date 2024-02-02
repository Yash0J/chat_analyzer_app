import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/body_text.dart';
import '../widgets/title_text.dart';
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
        // color: Appcolor.primary.withOpacity(0.),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Appcolor.primary.withOpacity(0.05),
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
            color: Appcolor.primary,
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
    this.data,
    this.titleColor,
    this.dataColor,
    this.titleFontWeight,
    this.dataFontWeight,
    this.titletextAlign,
    this.dataTextAlign,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.imageRadious,
    this.image,
    this.circleChild,
  });

  final double? imageRadious;
  final ImageProvider<Object>? image;
  final Widget? circleChild;

  final String? data;
  final String? title;

  final Color? titleColor;
  final Color? dataColor;

  final FontWeight? titleFontWeight;
  final FontWeight? dataFontWeight;

  final TextAlign? titletextAlign;
  final TextAlign? dataTextAlign;

  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            // maxRadius: 32,
            radius: imageRadious ?? 26,
            // minRadius: ,
            backgroundColor: Appcolor.quaternary,
            foregroundImage: image,
            child: SizedBox(width: 50, height: 50, child: circleChild),
          ),
          SizedBox(width: 3.w),
          TextTitleLarge(
            text: title ?? "",
            color: titleColor,
            fontWeight: titleFontWeight,
            textAlign: titletextAlign ?? TextAlign.left,
          ),
          const Spacer(),
          TextTitleMedium(
            text: data ?? "",
            color: dataColor ?? Colors.black54,
            fontWeight: dataFontWeight,
            textAlign: dataTextAlign ?? TextAlign.right,
            // size: 18,
          ),
        ],
      ),
    );
  }
}

class ListContainer extends StatelessWidget {
  const ListContainer({
    super.key,
    this.children,
    this.radius,
    this.width,
  });

  final double? width;
  final double? radius;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Appcolor.white,
            borderRadius: BorderRadius.circular(radius ?? 17),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  color: Appcolor.quaternary,
                  offset: const Offset(0, 2)),
            ]),
        child: Column(
          children: [
            if (children != null) ...children!,
          ],
        ),
      ),
    );
  }
}
