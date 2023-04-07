import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_booking_app/widgets/search/search_flights_form.dart';
import 'package:tickets_booking_app/widgets/search/search_hotels_form.dart';

class SearchFlightsHotels extends StatefulWidget {
  const SearchFlightsHotels({super.key});

  @override
  State<SearchFlightsHotels> createState() => _SearchFlightsHotelsState();
}

class _SearchFlightsHotelsState extends State<SearchFlightsHotels>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(
              25.0,
            ),
          ),
          child: TabBar(
            controller: tabController,
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            splashBorderRadius: BorderRadius.circular(25.0),
            indicator: const BoxDecoration(
              color: Colors.white,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade700,
            tabs: const [
              Tab(
                text: 'Airline Tickets',
              ),
              Tab(
                text: 'Hotels',
              ),
            ],
          ),
        ),
        const Gap(25),
        SizedBox(
          height: 255,
          child: TabBarView(
            controller: tabController,
            children: const [
              // first tab bar view widget
              SearchFlightsForm(),

              // second tab bar view widget
              SearchHotelsForm(),
            ],
          ),
        ),
      ],
    );
  }
}
