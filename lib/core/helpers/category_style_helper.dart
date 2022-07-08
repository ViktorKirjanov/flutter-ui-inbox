import 'package:flutter/material.dart';
import 'package:inbox/core/enums/category_type_enum.dart';

class CategoryStyleeHelper {
  static Color getColor(CategoryType categoryType) {
    switch (categoryType) {
      case CategoryType.Personal:
        return Colors.purple.shade800;
      case CategoryType.Work:
        return Colors.blue.shade600;
      case CategoryType.Events:
        return Colors.cyanAccent.shade400;
      case CategoryType.Social:
        return Colors.yellow.shade600;
    }
  }
}
