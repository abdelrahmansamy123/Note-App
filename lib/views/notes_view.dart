import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubit_cubit.dart';
import 'package:note/widgets/add_note_bottom_sheet.dart';
import 'package:note/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 36, 200, 212),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
