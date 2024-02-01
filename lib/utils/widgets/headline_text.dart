import 'package:flutter/material.dart';

class TextHeadlineLarge extends StatelessWidget {
  const TextHeadlineLarge({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.textAlign,
  });
  final Color? color;
  final TextAlign? textAlign;
  final String text;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontWeight: fontWeight,
              color: color,
            ));
  }
}

// ignore: must_be_immutable
class TextHeadlineMedium extends StatelessWidget {
  TextHeadlineMedium({
    super.key,
    required this.text,
    this.fontWeight,
    this.color,
    this.textAlign,
  });
  final Color? color;
  final String text;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}

class TextHeadlineSmall extends StatelessWidget {
  const TextHeadlineSmall({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.fontSize,
  });

  final TextAlign? textAlign;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
