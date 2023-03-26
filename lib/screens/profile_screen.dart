import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/app_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: Center(
        child: Text('Profile'),
      ),
    );
  }
}
