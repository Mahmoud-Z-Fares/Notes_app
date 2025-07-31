import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(19, 67, 67, 63),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    );
  }
}

class SubmitIcon extends StatelessWidget {
  const SubmitIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(19, 67, 67, 63),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
    );
  }
}
