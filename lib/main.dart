import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constant.dart';
import 'package:note/cubits/add_note/add_note_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/simple_bloc_observer.dart';
import 'package:note/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  // Register adapter first
  Hive.registerAdapter(NoteModelAdapter());
  // Then open the box
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
