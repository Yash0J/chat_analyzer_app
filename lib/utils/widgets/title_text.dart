import 'package:flutter/material.dart';

class TextTitleLarge extends StatelessWidget {
  const TextTitleLarge({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            overflow: TextOverflow.ellipsis,
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
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            overflow: TextOverflow.ellipsis,
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
  });
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            overflow: TextOverflow.ellipsis,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}
