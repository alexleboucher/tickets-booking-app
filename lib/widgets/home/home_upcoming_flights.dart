import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/models/ticket.dart';
import 'package:tickets_booking_app/widgets/ui/ticket_view.dart';
import 'package:tickets_booking_app/widgets/ui/view_all_title.dart';

import '../../main.dart';
import '../../utils/layout.dart';

class HomeUpcomingFlights extends StatelessWidget {
  const HomeUpcomingFlights({super.key, required this.tickets});

  final List<Ticket> tickets;

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return Column(
      children: [
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
      ],
    );
  }
}
