import 'package:notes_app/models/note_model.dart';

abstract class NoteState {}

class NotesInitialize extends NoteState {}

class NotesSuccess extends NoteState {
  List<NoteModel> notes;
  NotesSuccess(this.notes);
}

