import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final IconData prefixIconData;
  final bool obscureText;

  TextFieldWidget({
    this.labelText,
    this.prefixIconData,
    this.obscureText,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.white, fontSize: 16),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          prefixIconData,
          size: 22,
          color: Colors.white,
        ),
        filled: true, //Dolgunluğu sağlıyor
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        focusColor: Colors.white,
      ),
    );
  }
}
