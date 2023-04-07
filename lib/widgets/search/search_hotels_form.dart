import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_booking_app/widgets/ui/input/text_input.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

class SearchHotelsForm extends StatefulWidget {
  const SearchHotelsForm({super.key});

  @override
  State<SearchHotelsForm> createState() => _SearchHotelsFormState();
}

class _SearchHotelsFormState extends State<SearchHotelsForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextInput(
              onTapOutside: (event) {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              validator: (value) {
                if (value?.trim() == '') {
                  return 'City cannot be empty';
                }
                return null;
              },
              hintText: 'City *',
              prefixIcon: const Icon(Icons.location_pin),
              prefixIconColor: Colors.grey.shade500,
            ),
            const Gap(15),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(theme.colorScheme.primary),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Searching hotels...'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TitleText(
                  'Find hotels',
                  customization: TextCustomization(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
