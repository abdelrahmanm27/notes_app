import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

void customSnackBar({
  required BuildContext context,
  required String msg,
  NoteModel? note,
  bool deleteNote = false,
  String confirmLabel = '',
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black.withOpacity(0.5),
      content: Text(
        msg,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      action: SnackBarAction(
        label: confirmLabel,
        onPressed: () {
          if (deleteNote == true && note != null) {
            note.delete();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
      ),
    ),
  );
}
