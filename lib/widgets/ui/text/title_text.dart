import 'package:flutter/material.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/app_text.dart';

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

class TitleText extends AppText<TitleStyle> {
  const TitleText(
    super.text, {
    super.key,
    super.textStyle = TitleStyle.titleMedium,
    super.maxLines,
    super.minLines,
    super.overflow,
    super.customization,
  });

  @override
  TextStyle getTextStyle(TitleStyle textStyle, BuildContext context) {
    return textStylesMap[textStyle]!(context);
  }
}
