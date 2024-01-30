import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../color.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  DefaultButton({
    super.key,
    required this.child,
    required this.onTap,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;
  void Function()? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolor.secondry,
        elevation: 2,
        minimumSize: Size(50.w, 6.h),
        surfaceTintColor: Colors.transparent,
        shadowColor: Appcolor.tertiory.withOpacity(0.7),
      ),
      child: child,
    );
  }
}
