import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNotesCubit, ViewNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ViewNotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NoteItem(notes: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
