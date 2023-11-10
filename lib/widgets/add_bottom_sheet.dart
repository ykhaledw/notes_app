import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

