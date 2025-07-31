import 'package:flutter/material.dart';
import 'package:notes_app/Pages/edit_page.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditPage.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            top: 25,
            bottom: 25,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 223, 188, 52),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Note Title",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  "This is a note descriptionThis is a note descriptionThis is a no.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(165, 48, 43, 43),
                  ),
                ),

                trailing: IconButton(
                  iconSize: 24,
                  icon: Icon(Icons.delete, color: Colors.black),
                  onPressed: () {
                    // Handle delete action
                  },
                ),
              ),
              Text(
                "2023-10-01",
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(165, 48, 43, 43),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
