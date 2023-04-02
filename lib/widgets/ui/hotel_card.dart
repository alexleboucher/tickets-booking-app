import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_booking_app/models/hotel.dart';
import 'package:tickets_booking_app/utils/styles/text_styles.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.width,
    required this.hotel,
  });

  final double width;
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey.shade100,
      child: Ink(
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
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(3)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(hotel.imagePath),
                ),
              ),
            ),
            const Gap(15),
            TitleText(
              hotel.name,
              textStyle: TitleStyle.titleLarge,
              minLines: 2,
              overflow: TextOverflow.ellipsis,
              customization: const TextCustomization(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Gap(5),
            TitleText(
              hotel.city,
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
                          text: '${hotel.nightPrice}\$',
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
                      const WidgetSpan(
                        child: Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      TextSpan(
                        text: ' ${hotel.note.toStringAsFixed(1)}',
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
