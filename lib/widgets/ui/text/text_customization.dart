import 'package:flutter/material.dart';

class TextCustomization {
  const TextCustomization({this.color, this.fontWeight, this.fontSize});

  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  TextStyle customizeStyle(BuildContext context, TextStyle? textStyle) {
    final style = textStyle ?? Theme.of(context).textTheme.bodyMedium!;

    return style.copyWith(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
  }
}
