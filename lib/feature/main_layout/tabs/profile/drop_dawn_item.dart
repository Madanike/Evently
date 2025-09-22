import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_manager.dart';

class DropDawnItem extends StatelessWidget {
  const DropDawnItem({super.key , required this.label , required this.menuItems , required this.selectedItems});
final String label;
final List<String> menuItems;
final String selectedItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.labelMedium),
          SizedBox(height: 16.h),
          Container(
            height: 66.h,
            padding: REdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: ColorsManager.blue, width: 1),
            ),
            child: Row(
              children: [
                Text(selectedItems, style: Theme.of(context).textTheme.displayMedium),
                Spacer(),
                DropdownButton(
                  underline: SizedBox(),
                  items:menuItems.map((String value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
