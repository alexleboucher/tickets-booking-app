import 'package:flutter/material.dart';

class TextCustomization {
  const TextCustomization({this.color, this.fontWeight});

  final Color? color;
  final FontWeight? fontWeight;

  TextStyle customizeStyle(BuildContext context, TextStyle? textStyle) {
    final style = textStyle ?? Theme.of(context).textTheme.bodyMedium!;

    return style.copyWith(
      color: color,
      fontWeight: fontWeight,
    );
  }
}
