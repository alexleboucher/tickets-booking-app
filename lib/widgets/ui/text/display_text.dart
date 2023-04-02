import 'package:flutter/material.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/app_text.dart';

enum DisplayStyle {
  displayLarge,
  displayMedium,
  displaySmall,
}

Map<DisplayStyle, Function(BuildContext context)> textStylesMap = {
  DisplayStyle.displayLarge: getDisplayLargeTextStyle,
  DisplayStyle.displayMedium: getDisplayMediumTextStyle,
  DisplayStyle.displaySmall: getDisplaySmallTextStyle,
};

class DisplayText extends AppText<DisplayStyle> {
  const DisplayText(
    super.text, {
    super.key,
    super.textStyle = DisplayStyle.displayMedium,
    super.maxLines,
    super.minLines,
    super.overflow,
    super.customization,
  });

  @override
  TextStyle getTextStyle(DisplayStyle textStyle, BuildContext context) {
    return textStylesMap[textStyle]!(context);
  }
}
