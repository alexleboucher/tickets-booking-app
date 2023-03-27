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
  });

  final String text;
  final TitleStyle textStyle;
  final TextCustomization? customization;

  @override
  Widget build(BuildContext context) {
    var style = textStylesMap[textStyle]!(context);

    if (customization != null) {
      style = customization!.customizeStyle(context, style);
    }

    return Text(text, style: style);
  }
}
