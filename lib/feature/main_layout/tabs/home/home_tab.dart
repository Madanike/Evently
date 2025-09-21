import 'package:evently_project/core/resources/colors_manager.dart';
import 'package:evently_project/core/widget/custom_tab_bar.dart';
import 'package:evently_project/feature/main_layout/tabs/home/event_item.dart';
import 'package:evently_project/models/category_model.dart';
import 'package:evently_project/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24.r)),
            color: ColorsManager.blue,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back ✨',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text(
                              'Ahmed Ismail ✨',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),

                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: ColorsManager.white,
                                  size: 16.sp,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  'Cairo, Egypt ',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.light_mode,
                          color: ColorsManager.white,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: ColorsManager.white,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            'En',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h),
                CustomTabBar(
                  selectedBgColor: ColorsManager.white,
                  unSelectedBgColor: ColorsManager.blue,
                  selectedFgColor: ColorsManager.blue,
                  unSelectedFgColor: ColorsManager.white,
                  categories: CategoryModel.categoriesWithAll,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => EventItem(event: EventModel(category: CategoryModel.categoriesWithAll[3], title:' Meeting for Updating The Development Method' , description: 'Meeting for Updating The Development Method' , dateTime: DateTime.now(), timeOfDay: TimeOfDay.now() )),
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
