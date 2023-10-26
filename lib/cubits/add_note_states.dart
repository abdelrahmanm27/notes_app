abstract class AddNoteStates {}

class AddNotesInitialize extends AddNoteStates {}

class AddNotesLoading extends AddNoteStates {}

class AddNotesSuccess extends AddNoteStates {}

class AddNotesFailure extends AddNoteStates {
  String errMessage;
  AddNotesFailure(this.errMessage);
}
