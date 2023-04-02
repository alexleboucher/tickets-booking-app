import 'package:flutter/material.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';

enum TitleStyle {
  titleLarge,
  titleMedium,
  titleSmall,
}

Map<TitleStyle, Function(BuildContext context)> textStylesMap = {
  TitleStyle.titleLarge: getTitleLargeTextStyle,
  TitleStyle.titleMedium: getTitleMediumTextStyle,
  TitleStyle.titleSmall: getTitleSmallTextStyle,
};

class TitleText extends StatelessWidget {
  const TitleText(
    this.text, {
    super.key,
    this.textStyle = TitleStyle.titleMedium,
    this.customization,
    this.minLines,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final TitleStyle textStyle;
  final TextCustomization? customization;
  final int? minLines;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    var style = textStylesMap[textStyle]!(context);

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
      overflow: overflow,
    );
  }
}
