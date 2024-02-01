import 'package:flutter/material.dart';

class TextLabelLarge extends StatelessWidget {
  const TextLabelLarge({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
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
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class TextLabelMedium extends StatelessWidget {
  const TextLabelMedium({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
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
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}

class TextLabelSmall extends StatelessWidget {
  const TextLabelSmall({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
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
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
