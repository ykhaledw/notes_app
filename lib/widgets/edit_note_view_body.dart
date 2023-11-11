import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_edit_note_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.notes});

  final NoteModel notes;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomEditNoteAppBar(
              onPressed: () {
                widget.notes.title = title ?? widget.notes.title;
                widget.notes.subtitle = subtitle ?? widget.notes.subtitle;
                widget.notes.save();
                BlocProvider.of<ViewNotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.notes.title,
              hintTextStyle: TextStyle(fontSize: 32),
              inputTextStyle: TextStyle(fontSize: 32),
            ),
            CustomTextField(
              onChanged: (value) {
                subtitle = value;
              },
              hint: widget.notes.subtitle,
              hintTextStyle: TextStyle(fontSize: 18),
              maxLines: 100,
            ),
          ],
        ),
      ),
    );
  }
}
