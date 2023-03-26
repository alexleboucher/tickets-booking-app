import 'package:flutter/material.dart';

TextStyle getTitle1TextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.bold,
      );
}

TextStyle getTitle2TextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.bold,
      );
}

TextStyle getTitle3TextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.bold,
      );
}

TextStyle getTitle4TextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

TextStyle getTitle5TextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

TextStyle getTitle6TextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}
