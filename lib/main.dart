import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/screens/home_screen.dart';
import 'package:tickets_booking_app/screens/profile_screen.dart';
import 'package:tickets_booking_app/screens/search_screen.dart';
import 'package:tickets_booking_app/screens/tickets_screen.dart';
import 'package:tickets_booking_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              background: backgroundColor,
            ),
          ),
          home: const MainScreen(),
        ));
  }
}

enum MainTab {
  home,
  search,
  tickets,
  profile,
}

class MyAppState extends ChangeNotifier {
  MainTab currentTab = MainTab.home;

  void setCurrentTab(MainTab tab) {
    currentTab = tab;
    notifyListeners();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    Widget screen;
    switch (appState.currentTab) {
      case MainTab.home:
        screen = const HomeScreen();
        break;
      case MainTab.search:
        screen = const SearchScreen();
        break;
      case MainTab.tickets:
        screen = const TicketsScreen();
        break;
      case MainTab.profile:
        screen = const ProfileScreen();
        break;
      default:
        throw UnimplementedError('This screen is not implemented');
    }

    return screen;
  }
}
