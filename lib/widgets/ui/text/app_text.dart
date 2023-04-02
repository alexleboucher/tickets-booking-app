import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';

abstract class AppText<T> extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    required this.textStyle,
    this.customization,
    this.minLines,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final T textStyle;
  final TextCustomization? customization;
  final int? minLines;
  final int? maxLines;
  final TextOverflow? overflow;

  @protected
  TextStyle getTextStyle(T textStyle, BuildContext context);

  @override
  Widget build(BuildContext context) {
    var style = getTextStyle(textStyle, context);

    if (customization != null) {
      style = customization!.customizeStyle(context, style);
    }

    var formattedText = text;
    if (minLines != null) {
      for (var i = 0; i < minLines!; i++) {
        formattedText += '\n';
      }
    }

    return Text(
      formattedText,
      style: style,
      maxLines: maxLines ?? minLines,
    );
  }
}
