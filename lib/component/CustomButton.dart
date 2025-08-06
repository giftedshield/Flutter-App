import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myText = "Register";
  late final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(myText)) ;
  }
}