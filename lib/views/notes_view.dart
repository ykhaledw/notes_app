import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/widgets/add_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff232323),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 32,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
