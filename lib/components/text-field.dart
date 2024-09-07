import 'package:flutter/material.dart';

class TextFfield extends StatelessWidget {
  const TextFfield({super.key, required InputDecoration decoration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(9)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              icon: const Icon(
                Icons.search,
              ),
              hintStyle: TextStyle(color: Colors.grey[400]),
            ),
          ),
        ),
      ),
    );
  }
}
