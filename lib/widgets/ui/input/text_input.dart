import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.prefixIconColor = Colors.grey,
    this.focusedPrefixIconColor,
    this.fillColor = Colors.white,
    this.onTapOutside,
    this.validator,
  });

  final Widget? prefixIcon;
  final Color fillColor;
  final Color prefixIconColor;
  final Color? focusedPrefixIconColor;
  final String? hintText;
  final void Function(PointerDownEvent)? onTapOutside;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      onTapOutside: onTapOutside,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        prefixIconColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.focused)) {
            return focusedPrefixIconColor ?? theme.colorScheme.primary;
          }
          return prefixIconColor;
        }),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
