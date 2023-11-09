import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_edit_note_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomEditNoteAppBar(),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: 'Title',
              hintTextStyle: TextStyle(fontSize: 32),
              inputTextStyle: TextStyle(fontSize: 32),
            ),
            CustomTextField(
              hint: 'Content',
              hintTextStyle: TextStyle(fontSize: 18),
              maxLines: 100,
            ),
          ],
        ),
      ),
    );
  }
}
