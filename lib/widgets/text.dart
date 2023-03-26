import 'package:flutter/material.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';

enum AppTextStyle {
  title1,
  title2,
  title3,
  title4,
  title5,
  title6,
}

Map<AppTextStyle, Function(BuildContext context)> textStylesMap = {
  AppTextStyle.title1: getTitle1TextStyle,
  AppTextStyle.title2: getTitle2TextStyle,
  AppTextStyle.title3: getTitle3TextStyle,
  AppTextStyle.title4: getTitle4TextStyle,
  AppTextStyle.title5: getTitle5TextStyle,
  AppTextStyle.title6: getTitle6TextStyle,
};

class AppTextCustomization {
  const AppTextCustomization({this.color});

  final Color? color;

  TextStyle customizeStyle(BuildContext context, TextStyle? textStyle) {
    final style = textStyle ?? Theme.of(context).textTheme.bodyMedium!;

    return style.copyWith(
      color: color,
    );
  }
}

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.textStyle,
    this.customization,
  });

  final String text;
  final AppTextStyle? textStyle;
  final AppTextCustomization? customization;

  @override
  Widget build(BuildContext context) {
    var style = textStyle != null ? textStylesMap[textStyle]!(context) : null;

    if (customization != null) {
      style = customization!.customizeStyle(context, style);
    }

    return Text(text, style: style);
  }
}
