// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

void deleteSnackBar(BuildContext context, String msg, NoteModel note) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black.withOpacity(0.1),
      content: Text(
        msg,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      action: SnackBarAction(
        label: 'Yes',
        onPressed: () {
          note.delete();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        },
      ),
    ),
  );
}
