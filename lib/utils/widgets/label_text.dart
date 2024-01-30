import 'package:flutter/material.dart';

class TextLabelLarge extends StatelessWidget {
  const TextLabelLarge({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
  });
  final Color color;
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}

class TextLabelMedium extends StatelessWidget {
  const TextLabelMedium({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
  });
  final Color color;
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}

class TextLabelSmall extends StatelessWidget {
  const TextLabelSmall({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
  });
  final Color color;
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
