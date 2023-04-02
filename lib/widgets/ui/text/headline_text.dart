import 'package:flutter/material.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/app_text.dart';

enum HeadlineStyle {
  headlineLarge,
  headlineMedium,
  headlineSmall,
}

Map<HeadlineStyle, Function(BuildContext context)> textStylesMap = {
  HeadlineStyle.headlineLarge: getHeadlineLargeTextStyle,
  HeadlineStyle.headlineMedium: getHeadlineMediumTextStyle,
  HeadlineStyle.headlineSmall: getHeadlineSmallTextStyle,
};

class HeadlineText extends AppText<HeadlineStyle> {
  const HeadlineText(
    super.text, {
    super.key,
    super.textStyle = HeadlineStyle.headlineMedium,
    super.maxLines,
    super.minLines,
    super.overflow,
    super.customization,
  });

  @override
  TextStyle getTextStyle(HeadlineStyle textStyle, BuildContext context) {
    return textStylesMap[textStyle]!(context);
  }
}
