import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_snackbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_colors_list_view.dart';

// ignore: must_be_immutable
class EditNoteViewBody extends StatelessWidget {
  NoteModel note;
  EditNoteViewBody({super.key, required this.note});

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            onPressed: () {
              note.title = title ?? note.title;
              note.subTitle = content ?? note.subTitle;
              note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              customSnackBar(context: context, msg: 'Note edited successfully!',);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFormField(
            initialText: note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            initialText: note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          EditColorsListView(
            note: note,
          ),
        ],
      ),
    );
  }
}
