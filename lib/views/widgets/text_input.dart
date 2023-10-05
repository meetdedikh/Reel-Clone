import 'package:flutter/material.dart';
import 'package:reelclone/constant/constant.dart';

class TextInputField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData icon;
  final bool isObscured;
  const TextInputField(
      {Key? key,
      required this.labelText,
      required this.icon,
      this.isObscured = false,
      required this.controller})
      : super(key: key);

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: Icon(widget.icon),
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
      ),
      obscureText: widget.isObscured,
    );
  }
}
