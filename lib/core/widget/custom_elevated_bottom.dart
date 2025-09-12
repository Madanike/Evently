import 'package:flutter/material.dart';

class CustomElevatedBottom extends StatelessWidget {
  const CustomElevatedBottom({super.key , required this.title , required this.onPress});
final String title;
final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
   return ElevatedButton(onPressed: onPress
   , child: Text(title));

  }
}
