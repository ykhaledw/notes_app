import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.hintTextStyle,
      this.inputTextStyle,
      this.onSaved, this.onChanged});

  final String hint;
  final int maxLines;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Required Field';
        } else {
          return null;
        }
      },
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
