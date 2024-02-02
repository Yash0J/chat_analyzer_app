import 'package:flutter/material.dart';

class TextTitleLarge extends StatelessWidget {
  const TextTitleLarge({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}

class TextTitleMedium extends StatelessWidget {
  const TextTitleMedium({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}

class TextTitleSmall extends StatelessWidget {
  const TextTitleSmall({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  });
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}
