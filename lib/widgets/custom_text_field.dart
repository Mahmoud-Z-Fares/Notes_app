import 'package:flutter/material.dart';
import 'package:notes_app/Helper/helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: outlineborder(),
        focusedBorder: outlineborder(color: primaryColor),
        enabledBorder: outlineborder(),

        hintText: hintText,
        hintStyle: TextStyle(color: primaryColor),
      ),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder outlineborder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
