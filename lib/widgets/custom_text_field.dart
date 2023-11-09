import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.hintTextStyle, this.inputTextStyle});

  final String hint;
  final int maxLines;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: inputTextStyle,
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