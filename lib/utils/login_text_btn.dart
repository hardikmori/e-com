import 'package:flutter/material.dart';

class Logintextbtn extends StatelessWidget {
  const Logintextbtn({super.key, required this.title, required this.icons});

final String title ;
final IconData icons;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
          border: const OutlineInputBorder(),
          hintText: title,
          prefixIcon:  Icon(icons)),
    );
  }
}
