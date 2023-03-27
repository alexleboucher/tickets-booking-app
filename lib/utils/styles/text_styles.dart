import 'package:flutter/material.dart';

TextStyle getHeadlineLargeTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.bold,
      );
}

TextStyle getHeadlineMediumTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.bold,
      );
}

TextStyle getHeadlineSmallTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.bold,
      );
}

TextStyle getTitleLargeTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

TextStyle getTitleMediumTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

TextStyle getTitleSmallTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}
