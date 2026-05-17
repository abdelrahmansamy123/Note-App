import 'package:flutter/material.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 32),
            CustomTextField(hint: 'Content', maxLines: 6),
            SizedBox(height: 23),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
