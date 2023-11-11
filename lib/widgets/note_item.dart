import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});

  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(left: 50, top: 24, bottom: 24, right: 32),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffFD99FF),
        ),
        child: Text(
          notes.title,
          style: const TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
