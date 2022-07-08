import 'package:flutter/material.dart';
import 'package:inbox/core/enums/category_type_enum.dart';
import 'package:inbox/core/helpers/category_style_helper.dart';

class CategoryIndicator extends StatelessWidget {
  final CategoryType categoryType;

  const CategoryIndicator({Key? key, required this.categoryType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: CategoryStyleeHelper.getColor(categoryType),
        shape: BoxShape.circle,
      ),
    );
  }
}
