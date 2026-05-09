import 'package:flutter/material.dart';
import 'package:note/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 36, 200, 212),

        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
      body: const NotesViewBody(),
    );
  }
}
