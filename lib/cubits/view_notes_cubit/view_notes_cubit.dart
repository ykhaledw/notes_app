import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());

  fetchAllNotes() {
    emit(ViewNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(ViewNotesSuccess(notes));
    } on Exception catch (e) {
      emit(ViewNotesFailure(e.toString()));
    }
  }
}
