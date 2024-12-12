import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MohButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MohButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
