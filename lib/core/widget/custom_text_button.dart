import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key , required this.text , required this.onTab});

  final String text;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap: onTab,
      child: Text(text, style: GoogleFonts.inter(fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.blue,
        decoration: TextDecoration.underline,
        decorationColor: ColorsManager.blue,
        textStyle: TextStyle(fontStyle: FontStyle.italic),
      ),
      ),
    );

  }
}
