import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inbox/core/enums/category_type_enum.dart';
import 'package:inbox/screens/_widgets/common/category_indicator.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool selected;
  final CategoryType categoryType;

  const CategoryItem({
    Key? key,
    required this.title,
    this.selected = false,
    required this.categoryType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected ? Colors.blue.shade100 : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: double.infinity,
            height: 35.0,
            child: Row(
              children: [
                Container(
                  height: 35.0,
                  width: 70.0,
                  child: Center(
                    child: CategoryIndicator(categoryType: categoryType),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: selected ? Colors.blue : Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          onTap: () => print("tapped"),
        ),
      ),
    );
  }
}
