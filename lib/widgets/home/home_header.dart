import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/ui/text/headline_text.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                'Good Morning',
                textStyle: TitleStyle.titleMedium,
                customization: TextCustomization(
                  color: Colors.grey.shade500,
                ),
              ),
              const HeadlineText(
                'Fast Fly Tickets',
                textStyle: HeadlineStyle.headlineMedium,
              ),
            ],
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
