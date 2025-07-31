import 'package:flutter/material.dart';
import 'package:notes_app/widgets/app_bar.dart';
import 'package:notes_app/widgets/custom_buttom_sheet.dart';
import 'package:notes_app/widgets/notes_listview.dart';
import 'package:notes_app/widgets/search_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: const Color.fromARGB(245, 16, 32, 61),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) {
              return const CustomeModalButtomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 40),
          const NotesAppBar(title: "Notes", icon: SearchIcon()),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
