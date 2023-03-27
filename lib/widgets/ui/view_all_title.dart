import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/ui/text/headline_text.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

class ViewAllTitle extends StatelessWidget {
  const ViewAllTitle({
    super.key,
    required this.title,
    required this.onViewAllTapped,
  });

  final String title;
  final VoidCallback onViewAllTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeadlineText(title, textStyle: HeadlineStyle.headlineSmall),
        TextButton(
          onPressed: onViewAllTapped,
          child: const TitleText(
            'View all',
            textStyle: TitleStyle.titleSmall,
            customization: TextCustomization(
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
