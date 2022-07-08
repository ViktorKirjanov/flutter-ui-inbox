import 'package:inbox/core/enums/category_type_enum.dart';

class Email {
  final String name;
  final String avatar;
  final String date;
  final String title;
  final String shortText;
  final bool starred;
  final bool online;
  final bool selected;
  final CategoryType? categoryType;

  Email({
    required this.name,
    required this.avatar,
    required this.date,
    required this.title,
    required this.shortText,
    this.starred = false,
    this.online = false,
    this.selected = false,
    this.categoryType,
  });
}
