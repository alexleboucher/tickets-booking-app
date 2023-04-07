import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/main.dart';
import 'package:tickets_booking_app/models/hotel.dart';
import 'package:tickets_booking_app/models/ticket.dart';
import 'package:tickets_booking_app/utils/layout.dart';
import 'package:tickets_booking_app/widgets/home/home_header.dart';
import 'package:tickets_booking_app/widgets/ui/hotel_card.dart';
import 'package:tickets_booking_app/widgets/ui/ticket_view.dart';
import 'package:tickets_booking_app/widgets/ui/view_all_title.dart';

var tickets = [
  Ticket(
    departureCode: 'NYC',
    departureName: 'New-York',
    arrivalCode: 'LDN',
    arrivalName: 'London',
    flightDuration: const Duration(hours: 8, minutes: 30),
    departureDate: DateTime(2023, 5, 23, 10, 20),
    ticketNumber: 23,
  ),
  Ticket(
    departureCode: 'LDN',
    departureName: 'London',
    arrivalCode: 'NYC',
    arrivalName: 'New-York',
    flightDuration: const Duration(hours: 8, minutes: 15),
    departureDate: DateTime(2023, 5, 30, 14, 55),
    ticketNumber: 23,
  ),
];

var hotels = [
  const Hotel(
    name: 'Hotel Handouri & Tretes',
    city: 'London',
    nightPrice: 80,
    note: 4.7,
    imagePath: 'assets/images/hotel_one.png',
  ),
  const Hotel(
    name: 'Notting Hile Gate Hotel',
    city: 'London',
    nightPrice: 65,
    note: 3.4,
    imagePath: 'assets/images/hotel_two.png',
  ),
  const Hotel(
    name: 'Pontlands Park',
    city: 'Chelmsford',
    nightPrice: 176,
    note: 4.5,
    imagePath: 'assets/images/hotel_three.png',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child: Column(
            children: [
              const HomeHeader(),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  child: TextFormField(
                    onTapOutside: (event) {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIconColor: Colors.grey.shade500,
                      prefixIcon: const Icon(
                          FluentSystemIcons.ic_fluent_search_regular),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(25),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ViewAllTitle(
                  title: 'Upcoming Flights',
                  onViewAllTapped: () {
                    appState.setCurrentTab(MainTab.tickets);
                  },
                ),
              ),
              const Gap(5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Gap(20),
                    for (final ticket in tickets)
                      Row(
                        children: [
                          TicketView(
                            width: getSize(context).width * 0.8,
                            ticket: ticket,
                          ),
                          const Gap(20),
                        ],
                      ),
                  ],
                ),
              ),
              const Gap(25),
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
          ),
        ),
      ],
    );
  }
}
