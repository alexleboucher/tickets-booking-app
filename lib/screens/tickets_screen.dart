import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/app_scaffold.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Tickets',
      child: Center(
        child: Text('Tickets'),
      ),
    );
  }
}
