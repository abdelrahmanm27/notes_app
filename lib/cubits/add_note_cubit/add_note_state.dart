abstract class AddNoteState {}

class AddNotesInitialize extends AddNoteState {}

class AddNotesLoading extends AddNoteState {}

class AddNotesSuccess extends AddNoteState {}

class AddNotesFailure extends AddNoteState {
  String errMessage;
  AddNotesFailure(this.errMessage);
}
