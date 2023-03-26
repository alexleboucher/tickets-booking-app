import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/text.dart';

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
        AppText(
          title,
          textStyle: AppTextStyle.title3,
        ),
        TextButton(
          onPressed: onViewAllTapped,
          child: const AppText(
            'View all',
            customization: AppTextCustomization(
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
