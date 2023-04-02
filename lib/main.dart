import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/screens/home_screen.dart';
import 'package:tickets_booking_app/screens/profile_screen.dart';
import 'package:tickets_booking_app/screens/search_screen.dart';
import 'package:tickets_booking_app/screens/tickets_screen.dart';
import 'package:tickets_booking_app/utils/colors.dart';
import 'package:tickets_booking_app/widgets/bottom_bar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(),
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

class AppState extends ChangeNotifier {
  MainTab currentTab = MainTab.home;

  void setCurrentTab(MainTab tab) {
    currentTab = tab;
    notifyListeners();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static Map<MainTab, Widget> tabOptions = {
    MainTab.home: const HomeScreen(),
    MainTab.search: const SearchScreen(),
    MainTab.tickets: const TicketsScreen(),
    MainTab.profile: const ProfileScreen(),
  };

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return Scaffold(
      body: SafeArea(
        child: tabOptions[appState.currentTab]!,
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
