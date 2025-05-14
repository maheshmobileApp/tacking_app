
import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({super.key,required this.hintText, 
  required this.controller,
  this.validator,
  this.prefixIcon,
  this.suffixIcon
  });
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator,
         decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
         ),
      ),
    );
  }
}