import 'package:flutter/material.dart';

Widget Cbutton(String title, onPressed) {
  return Expanded(
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 1,
            backgroundColor: Colors.grey.shade300),
        onPressed: onPressed,
        child: Text(title)),
  );
}
