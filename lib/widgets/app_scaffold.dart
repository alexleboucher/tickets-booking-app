import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/bottom_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
    this.title = 'Flying App',
    this.showNavigationBar = true,
  });

  final String title;
  final Widget child;
  final bool showNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: child,
      ),
      bottomNavigationBar: showNavigationBar ? const BottomBar() : null,
    );
  }
}
