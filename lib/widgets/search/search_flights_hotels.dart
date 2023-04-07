import 'package:flutter/material.dart';

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
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 40,
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
        SizedBox(
          height: 200,
          child: TabBarView(
            controller: tabController,
            children: const [
              // first tab bar view widget
              Center(
                child: Text(
                  'Airline Tickets',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // second tab bar view widget
              Center(
                child: Text(
                  'Hotels',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
