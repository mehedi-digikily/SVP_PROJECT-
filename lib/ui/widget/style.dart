import 'package:flutter/material.dart';

InputDecoration decoration( String hint,  ) {
  return InputDecoration(
    hintText: hint,
    labelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xFF9C98A9),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}



