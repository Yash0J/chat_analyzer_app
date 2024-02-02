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
    this.boderColor,
    this.boderWidth,
  });

  final double? width;
  final double? height;
  final void Function()? onTap;
  final Color? foregroundColor;
  final Color? color;
  final Color? boderColor;

  final Widget? child;
  final double? boderWidth;
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
        backgroundColor: color ?? Appcolor.primary,
        foregroundColor: foregroundColor ?? Appcolor.blue,
        elevation: elevation ?? 0,
        side: BorderSide(
          width: boderWidth ?? 0,
          color: boderColor ?? Appcolor.nocolor,
        ),
        minimumSize: Size(width ?? 40.w, height ?? 6.h),
        shadowColor: Appcolor.quaternary,
      ),
      child: child,
    );
  }
}
