import 'package:flutter/material.dart';

class TextCustomization {
  const TextCustomization({this.color});

  final Color? color;

  TextStyle customizeStyle(BuildContext context, TextStyle? textStyle) {
    final style = textStyle ?? Theme.of(context).textTheme.bodyMedium!;

    return style.copyWith(
      color: color,
    );
  }
}
