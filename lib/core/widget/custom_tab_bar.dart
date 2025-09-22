import 'package:flutter/material.dart';
import '../../feature/main_layout/tabs/home/tab_item.dart';
import '../../models/category_model.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key, required this.selectedBgColor, required this.unSelectedBgColor, required this.selectedFgColor, required this.unSelectedFgColor, required this.categories});

  final Color selectedBgColor;
  final Color unSelectedBgColor;
  final Color selectedFgColor;
  final Color unSelectedFgColor;
  final List<CategoryModel> categories;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:widget.categories.length,
      child: TabBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        // padding: REdgeInsets.symmetric(vertical: 16),
        indicatorColor: Colors.transparent,
        isScrollable: true,
        tabs: widget.categories
            .map(
              (category) =>
              TabItem(
                selectedTabBgColor: widget.selectedBgColor,
                selectedTabFgColor: widget.selectedFgColor,
                unSelectedTabBgColor: widget.unSelectedBgColor,
                unselectedTabFgColor: widget.unSelectedFgColor,
                isSelected:
                selectedIndex ==
                    widget.categories.indexOf(
                        category
                    ),
                category: category,
              ),
        )
            .toList(),
      ),
    );
  }
}
