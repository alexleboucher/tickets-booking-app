import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Home',
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}
