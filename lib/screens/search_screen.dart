import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_booking_app/widgets/search/search_flights_hotels.dart';
import 'package:tickets_booking_app/widgets/ui/text/display_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
          child: DisplayText(
            'What are\nyou looking for?',
            textStyle: DisplayStyle.displaySmall,
          ),
        ),
        Gap(20),
        SearchFlightsHotels(),
      ],
    );
  }
}
