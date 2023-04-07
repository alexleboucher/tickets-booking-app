import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.prefixIconColor = Colors.grey,
    this.fillColor = Colors.white,
    this.onTapOutside,
  });

  final Widget? prefixIcon;
  final Color fillColor;
  final Color? prefixIconColor;
  final String? hintText;
  final void Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: onTapOutside,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        prefixIconColor: prefixIconColor,
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
