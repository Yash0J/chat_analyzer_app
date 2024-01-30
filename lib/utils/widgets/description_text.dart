import 'package:flutter/material.dart';

class TextDescriptionLarge extends StatelessWidget {
  const TextDescriptionLarge({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.fontSize,
  }) : super(key: key);
  final TextAlign textAlign;
  final Color color;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class TextDescriptionMedium extends StatelessWidget {
  const TextDescriptionMedium({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.fontSize,
  }) : super(key: key);

  final TextAlign textAlign;
  final Color color;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}

class TextDescriptionSmall extends StatelessWidget {
  const TextDescriptionSmall({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.fontSize,
  }) : super(key: key);

  final TextAlign textAlign;
  final Color color;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
