import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';
import 'package:notes_app/models/note_model.dart';

// ignore: must_be_immutable
class EditNoteView extends StatelessWidget {
  NoteModel note;
  EditNoteView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: EditNoteViewBody(note: note),
      ),
    );
  }
}
