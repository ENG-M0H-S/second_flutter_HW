import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_hw_login/const/colors.dart';

class MohTextBox extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const MohTextBox({super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: hintText,
          filled: true,
          fillColor: AppColors.secondary,
          border: OutlineInputBorder(borderRadius:  BorderRadius.circular(10)),
        ),

      ),
    );
  }
}

