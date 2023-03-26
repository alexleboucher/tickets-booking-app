import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tickets_booking_app/main.dart';
import 'package:tickets_booking_app/widgets/app_scaffold.dart';
import 'package:tickets_booking_app/widgets/text.dart';
import 'package:tickets_booking_app/widgets/view_all_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    return AppScaffold(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          'Good Morning',
                          textStyle: AppTextStyle.title5,
                          customization: AppTextCustomization(
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const AppText(
                          'Fast Fly Tickets',
                          textStyle: AppTextStyle.title2,
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ],
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
