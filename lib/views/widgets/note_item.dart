// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/widgets/custom_snackbar.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  NoteItem({required this.note});
  NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 12,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(
                  top: 14,
                  bottom: 14,
                ),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                onPressed: () {
                  deleteSnackBar(context, 'Delete this note ?', note);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
