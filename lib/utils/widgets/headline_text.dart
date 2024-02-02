import 'package:flutter/material.dart';

class TextHeadlineLarge extends StatelessWidget {
  const TextHeadlineLarge({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.overflow,
  });
  final Color? color;
  final TextAlign? textAlign;
  final String text;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontWeight: fontWeight,
              color: color,
              overflow: overflow ?? TextOverflow.ellipsis,
            ));
  }
}

// ignore: must_be_immutable
class TextHeadlineMedium extends StatelessWidget {
  const TextHeadlineMedium({
    super.key,
    required this.text,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.overflow,
  });
  final Color? color;
  final String text;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: fontWeight,
            color: color,
            overflow: overflow ?? TextOverflow.ellipsis,
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
    this.overflow,
  });

  final TextAlign? textAlign;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: fontWeight,
            color: color,
            overflow: overflow ?? TextOverflow.ellipsis,
          ),
    );
  }
}
