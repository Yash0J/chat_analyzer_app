import 'package:flutter/material.dart';

class TextTitleLarge extends StatelessWidget {
  const TextTitleLarge({
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
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class TextTitleMedium extends StatelessWidget {
  const TextTitleMedium({
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
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}

class TextTitleSmall extends StatelessWidget {
  const TextTitleSmall({
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
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
