import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.label,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this .isSecure = false,
    required this.validator,
     required this.controller,
  });

  final String label;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final bool isSecure ;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator ,
      obscureText: isSecure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon:prefixIcon == null ? null :  Icon(prefixIcon),
         suffixIcon:suffixIcon ,
        labelText: label,
      ),
    );
  }
}
