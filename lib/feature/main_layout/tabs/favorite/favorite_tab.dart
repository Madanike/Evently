import 'package:evently_project/core/resources/colors_manager.dart';
import 'package:evently_project/feature/main_layout/tabs/home/event_item.dart';
import 'package:evently_project/models/category_model.dart';
import 'package:evently_project/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1),
                ),
                prefixIcon: Icon(Icons.search_rounded),
                prefixIconColor: ColorsManager.blue,
                hintText: 'search for event ',
                hintStyle: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => EventItem(
                event: EventModel(
                  category: CategoryModel.categoriesWithAll[3],
                  title: 'Meeting for Updating The Development Method ',
                  description: 'Meeting for Updating The Development Method ',
                  dateTime: DateTime.now(),
                  timeOfDay: TimeOfDay.now(),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
