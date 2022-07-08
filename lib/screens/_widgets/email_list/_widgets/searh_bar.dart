import 'package:flutter/material.dart';
import 'package:inbox/core/helpers/responsive_helper.dart';

import 'search_text_field.dart';

class SearchBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey;

  const SearchBar({Key? key, required this.globalKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1.5,
            color: Colors.grey.shade100,
          ),
        ),
      ),
      child: Row(
        children: [
          if (!ResponsiveHelper.isDesktop(context))
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.grey,
                onPressed: () => globalKey.currentState!.openDrawer(),
              ),
            ),
          Expanded(child: SearchTextField()),
        ],
      ),
    );
  }
}
