import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/bottom_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
    this.showNavigationBar = true,
  });

  final Widget child;
  final bool showNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: child,
      ),
      bottomNavigationBar: showNavigationBar ? const BottomBar() : null,
    );
  }
}
