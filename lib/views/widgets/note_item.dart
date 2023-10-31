import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/widgets/custom_snackbar.dart';

// ignore: must_be_immutable
class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.note});
  NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(note: note),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
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
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(
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
              trailing:  IconButton(
                icon: const Padding(
                  padding: EdgeInsets.only(
                    left: 12,
                  ),
                  child: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                onPressed: () {
                  customSnackBar(
                    context: context,
                    msg: 'Delete this note ?',
                    confirmLabel: 'Yes',
                    note: note,
                    deleteNote: true,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
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
