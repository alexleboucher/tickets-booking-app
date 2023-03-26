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

class MyAppState extends ChangeNotifier {
  var currentTabIndex = 0;

  void setCurrentTabIndex(int index) {
    currentTabIndex = index;
    notifyListeners();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    Widget screen;
    switch (appState.currentTabIndex) {
      case 0:
        screen = const HomeScreen();
        break;
      case 1:
        screen = const SearchScreen();
        break;
      case 2:
        screen = const TicketsScreen();
        break;
      case 3:
        screen = const ProfileScreen();
        break;
      default:
        throw UnimplementedError('This screen is not implemented');
    }

    return screen;
  }
}
