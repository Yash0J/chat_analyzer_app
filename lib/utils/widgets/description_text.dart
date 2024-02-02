import 'package:flutter/material.dart';

class TextDescriptionLarge extends StatelessWidget {
  const TextDescriptionLarge({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.fontWeight,
    this.textAlign,
  });
  final Color? color;
  final String text;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: fontWeight,
            color: color,
            overflow: overflow ?? TextOverflow.ellipsis,
          ),
    );
  }
}

class TextDescriptionMedium extends StatelessWidget {
  const TextDescriptionMedium({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.fontWeight,
    this.textAlign,
  });
  final Color? color;
  final String text;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: fontWeight,
            color: color,
            overflow: overflow ?? TextOverflow.ellipsis,
          ),
    );
  }
}

class TextDescriptionSmall extends StatelessWidget {
  const TextDescriptionSmall({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.overflow,
    this.textAlign,
  });
  final Color? color;
  final String text;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: fontWeight,
            color: color,
            overflow: overflow ?? TextOverflow.ellipsis,
          ),
    );
  }
}
