import 'package:flutter/material.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';

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

class HeadlineText extends StatelessWidget {
  const HeadlineText(
    this.text, {
    super.key,
    this.textStyle = HeadlineStyle.headlineMedium,
    this.customization,
  });

  final String text;
  final HeadlineStyle textStyle;
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
