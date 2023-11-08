import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hint: 'Title', hintTextStyle: TextStyle(fontSize: 28)),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 45,
            ),
            CustomBotton(),
          ],
        ),
      ),
    );
  }
}
