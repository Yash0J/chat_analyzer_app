import 'package:flutter/material.dart';

class TextBodyLarge extends StatelessWidget {
  const TextBodyLarge({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.size,
    this.overflow,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontWeight: fontWeight,
            fontSize: size,
            color: color,
          ),
    );
  }
}

class TextBodyMedium extends StatelessWidget {
  const TextBodyMedium({
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
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}

class TextBodySmall extends StatelessWidget {
  const TextBodySmall({
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
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            overflow: TextOverflow.ellipsis,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}
