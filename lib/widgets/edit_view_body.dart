import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubit_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_text_field.dart';
import 'package:note/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? tittle, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = tittle ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.done,
          ),
          const SizedBox(height: 50),
          CustomTextField(
            onChange: (value) {
              tittle = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onChange: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 6,
          ),
          const SizedBox(height: 20),

          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
