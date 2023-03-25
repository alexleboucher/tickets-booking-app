import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/main.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    void onItemTapped(int index) {
      appState.setCurrentTabIndex(index);
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: appState.currentTabIndex,
      onTap: (value) => onItemTapped(value),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: 'Tickets',
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: 'Profile',
        ),
      ],
    );
  }
}