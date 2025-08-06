import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget{
  final String? Label = "Username";
  final TextEditingController txtUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtUsername,
      decoration: InputDecoration(
        hintText: Label),
      
    );
  }
}