import 'package:flutter/material.dart';

Widget textField(final String hint, final TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 20, top: 8.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffe7e7e7), width: 1.0)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF20bca4), width: 1.0)),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        isDense: true,
      ),
    ),
  );
}
