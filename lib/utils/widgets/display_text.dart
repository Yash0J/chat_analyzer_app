import 'package:flutter/material.dart';

class TextDisplayLarge extends StatelessWidget {
  const TextDisplayLarge({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.textAlign,
  });
  final Color? color;
  final TextAlign? textAlign;
  final String text;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontWeight: fontWeight,
              color: color,
            ));
  }
}

// ignore: must_be_immutable
class TextDisplayMedium extends StatelessWidget {
  TextDisplayMedium({
    super.key,
    required this.text,
    this.fontWeight,
    this.color,
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
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}

class TextDisplaySmall extends StatelessWidget {
  const TextDisplaySmall({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.size,
  });

  final TextAlign? textAlign;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontWeight: fontWeight,
            color: color,
            fontSize: size,
          ),
    );
  }
}
