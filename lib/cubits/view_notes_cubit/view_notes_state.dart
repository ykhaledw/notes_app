import 'package:notes_app/models/note_model.dart';

abstract class ViewNotesState {}

class ViewNotesInitial extends ViewNotesState {}

class ViewNotesLoading extends ViewNotesState {}

class ViewNotesSuccess extends ViewNotesState {
  final List<NoteModel> notes;

  ViewNotesSuccess(this.notes);
}

class ViewNotesFailure extends ViewNotesState {
  final String errorMessage;

  ViewNotesFailure(this.errorMessage);
}
