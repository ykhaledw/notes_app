import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.hintTextStyle});

  final String hint;
  final int maxLines;
  final TextStyle? hintTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintTextStyle,
        border: InputBorder.none,
      ),
    );
  }
}