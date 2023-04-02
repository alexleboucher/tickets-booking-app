import 'package:flutter/material.dart';
import 'package:tickets_booking_app/widgets/ui/text/display_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
      child: ListView(
        children: const [
          DisplayText(
            'What are\nyou looking for?',
            textStyle: DisplayStyle.displaySmall,
          ),
        ],
      ),
    );
  }
}
