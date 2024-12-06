import 'package:flutter/material.dart';

void showMYSnackBar({
  required BuildContext context,
  required String message,
  Color color = Colors.green, // Default color if none is provided
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(message),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
