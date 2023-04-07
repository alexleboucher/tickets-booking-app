import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/models/hotel.dart';
import 'package:tickets_booking_app/widgets/ui/hotel_card.dart';
import 'package:tickets_booking_app/widgets/ui/view_all_title.dart';

import '../../main.dart';
import '../../utils/layout.dart';

class HomeHotels extends StatelessWidget {
  const HomeHotels({super.key, required this.hotels});

  final List<Hotel> hotels;

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ViewAllTitle(
            title: 'Hotels',
            onViewAllTapped: () {
              appState.setCurrentTab(MainTab.search);
            },
          ),
        ),
        const Gap(5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Gap(20),
              for (final hotel in hotels)
                Row(
                  children: [
                    HotelCard(
                      width: getSize(context).width * 0.55,
                      hotel: hotel,
                    ),
                    const Gap(20),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
