import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../constants/color.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.child,
    required this.onTap,
    this.width,
    this.height,
    this.foregroundColor,
    this.color,
    this.elevation,
    this.radius,
  });

  final double? width;
  final double? height;
  final void Function()? onTap;
  final Color? foregroundColor;
  final Color? color;

  final Widget? child;
  final double? elevation;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 17),
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: color ?? Appcolor.navy,
        foregroundColor: foregroundColor ?? Appcolor.white,
        elevation: elevation ?? 0,
        minimumSize: Size(width ?? 50.w, height ?? 8.h),
        shadowColor: Appcolor.quaternary,
      ),
      child: child,
    );
  }
}
