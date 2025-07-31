import 'package:flutter/material.dart';
import 'package:notes_app/Pages/edit_page.dart';
import 'package:notes_app/Pages/home_page.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        EditPage.routeName: (context) => const EditPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      title: 'Notes App',
      theme: ThemeData(
        brightness: Brightness.dark,

        scaffoldBackgroundColor: const Color.fromARGB(235, 68, 66, 66),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
