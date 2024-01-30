import 'package:flutter/material.dart';

class TextHeadlineLarge extends StatelessWidget {
  const TextHeadlineLarge({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
  });
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}

class TextHeadlineMedium extends StatelessWidget {
  const TextHeadlineMedium({
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
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class TextHeadlineSmall extends StatelessWidget {
  const TextHeadlineSmall({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.fontWeight,
    this.fontSize,
  });

  final TextAlign textAlign;
  final String text;
  final Color color;
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
