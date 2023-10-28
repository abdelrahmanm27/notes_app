import 'package:notes_app/models/note_model.dart';

abstract class NoteState {}

class NotesInitialize extends NoteState {}

class NotesLoading extends NoteState {}

class NotesSuccess extends NoteState {
  List<NoteModel> notes;
  NotesSuccess(this.notes);
}

class NotesFailure extends NoteState {
  String errMessage;
  NotesFailure(this.errMessage);
}
