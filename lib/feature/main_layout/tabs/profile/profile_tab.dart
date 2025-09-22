import 'package:evently_project/core/resources/asset_manager.dart';
import 'package:evently_project/core/resources/colors_manager.dart';
import 'package:evently_project/feature/main_layout/tabs/profile/drop_dawn_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.r)),
          ),
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(AssetsImages.profileImage),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ahmed Ismail',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.white,
                      ),
                    ),
                    Text(
                      'Ahmed Ismail@gmail.com',
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),
        DropDawnItem(
          label: 'Language',
          menuItems: ['عربي', 'English'],
          selectedItems: 'English',
        ),
        SizedBox(height: 16.h),
        DropDawnItem(
          label: 'Theme',
          menuItems: ['Light', 'Dark'],
          selectedItems: 'Light',
        ),
          Spacer(flex: 6,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16 ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.red,
              foregroundColor: ColorsManager.white,
              padding: REdgeInsets.all(16.0),
              textStyle: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: ColorsManager.white,

              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              )
            ),
            onPressed: () {},
            child: Row(children: [Icon(Icons.logout),SizedBox(width: 8.w,), Text('Logout')]),
          ),
        ),
        Spacer(flex: 4,),
      ],
    );
  }
}
