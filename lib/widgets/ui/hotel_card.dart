import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.width,
    required this.name,
    required this.city,
    required this.nightPrice,
    required this.note,
  });

  final double width;
  final String name;
  final String city;
  final int nightPrice;
  final double note;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 125,
            width: width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/hotel_one.png'),
              ),
            ),
          ),
          const Gap(15),
          TitleText(
            name,
            textStyle: TitleStyle.titleLarge,
            customization: const TextCustomization(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Gap(5),
          TitleText(
            city,
            textStyle: TitleStyle.titleSmall,
            customization: TextCustomization(
              color: Colors.grey.shade500,
            ),
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  // Child text spans will inherit styles from parent
                  style: getTitleSmallTextStyle(context),
                  children: [
                    TextSpan(
                        text: '$nightPrice\$',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const TextSpan(text: ' per night'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: getTitleSmallTextStyle(context)
                      .copyWith(color: Colors.orangeAccent),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    TextSpan(
                      text: ' ${note.toStringAsFixed(1)}',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
