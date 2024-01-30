import 'package:flutter/material.dart';

class TextBodyLarge extends StatelessWidget {
  const TextBodyLarge({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 18,
    this.textAlign = TextAlign.left,
    this.fontWeight,
  });
  final Color color;
  final TextAlign textAlign;
  final String text;
  final double size;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

class TextBodyMedium extends StatelessWidget {
  const TextBodyMedium({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.fontWeight,
  });
  final Color color;
  final TextAlign textAlign;
  final String text;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class TextBodySmall extends StatelessWidget {
  const TextBodySmall({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.fontWeight,
  });
  final Color color;
  final TextAlign textAlign;
  final String text;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
