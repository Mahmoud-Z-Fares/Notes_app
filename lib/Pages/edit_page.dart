import 'package:flutter/material.dart';
import 'package:notes_app/widgets/app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/search_icon.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  static const String routeName = 'EditPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(height: 40),
            NotesAppBar(title: "Edit Note", icon: SubmitIcon()),
            CustomTextField(hintText: "title"),
            CustomTextField(hintText: "content", maxLines: 5),
          ],
        ),
      ),
    );
  }
}
