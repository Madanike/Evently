import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    this.label,
    this.hint,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this .isSecure = false,
    required this.validator,
     required this.controller,
    this.lines = 1,
  });

  final String? label;
  final String? hint;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final bool isSecure ;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final int lines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines ,
      controller: controller,
      validator: validator ,
      obscureText: isSecure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon:prefixIcon == null ? null :  Icon(prefixIcon),
         suffixIcon:suffixIcon ,
        labelText: label,
        hintText: hint,
      ),
    );
  }
}
