import 'package:flutter/material.dart';
import 'package:notes_app/Helper/helper.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomeModalButtomSheet extends StatelessWidget {
  const CustomeModalButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        CustomTextField(hintText: "Note Title"),
        SizedBox(height: 20),
        CustomTextField(hintText: "Note Description", maxLines: 5),
        SizedBox(height: 20),
        CustomElevatedButton(
          buttonText: "Add Note",
          color: primaryColor,
          width: double.infinity,
          height: 50,
        ),
      ],
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.color,
    required this.height,
    required this.width,
  });
  final String buttonText;
  final Color color;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(buttonText),
      ),
    );
  }
}
