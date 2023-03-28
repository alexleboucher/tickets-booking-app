import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/main.dart';
import 'package:tickets_booking_app/widgets/app_scaffold.dart';
import 'package:tickets_booking_app/widgets/home/home_header.dart';
import 'package:tickets_booking_app/widgets/ui/ticket_view.dart';
import 'package:tickets_booking_app/widgets/ui/view_all_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return AppScaffold(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(50),
                const HomeHeader(),
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
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
                const Gap(25),
                ViewAllTitle(
                  title: 'Upcoming Flights',
                  onViewAllTapped: () {
                    appState.setCurrentTab(MainTab.tickets);
                  },
                ),
                const Gap(5),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const TicketView(
                    departureCode: 'NYC',
                    departureName: 'New-York',
                    arrivalCode: 'LDN',
                    arrivalName: 'London',
                    flightDuration: Duration(hours: 8, minutes: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
