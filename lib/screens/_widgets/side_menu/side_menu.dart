import 'package:flutter/material.dart';
import 'package:inbox/_widgets/divider_line.dart';
import 'package:inbox/core/helpers/responsive_helper.dart';
import 'package:inbox/core/enums/category_type_enum.dart';
import 'package:inbox/screens/_widgets/top_menu/_widgets/logo.dart';

import '_widgets/category_item.dart';
import '_widgets/create_button.dart';
import '_widgets/menu_item.dart';
import '_widgets/new_message.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(
          right: BorderSide(
            width: 1.5,
            color: Colors.grey.shade100,
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!ResponsiveHelper.isDesktop(context))
                Container(
                  color: Colors.grey.shade100,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Logo(),
                        IconButton(
                          icon: Icon(Icons.close_rounded),
                          color: Colors.grey.shade600,
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                  ),
                ),
              NewMessage(),
              MenuItem(
                key: Key('inbox-menu-item'),
                title: 'Inbox',
                icon: 'assets/icons/inbox.svg',
                count: 2,
                selected: true,
              ),
              MenuItem(
                key: Key('marked-menu-item'),
                title: 'Marked',
                icon: 'assets/icons/star.svg',
              ),
              MenuItem(
                key: Key('drafts-menu-item'),
                title: 'Drafts',
                icon: 'assets/icons/pen.svg',
              ),
              MenuItem(
                key: Key('deleted-menu-item'),
                title: 'Deleted',
                icon: 'assets/icons/trash-can.svg',
              ),
              DividerLine(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 10.0),
                child: Text(
                  'CATEGORIES',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              CategoryItem(
                title: 'Personal',
                categoryType: CategoryType.Personal,
              ),
              CategoryItem(
                title: 'Work',
                categoryType: CategoryType.Work,
              ),
              CategoryItem(
                title: 'Events',
                categoryType: CategoryType.Events,
              ),
              CategoryItem(
                title: 'Social',
                categoryType: CategoryType.Social,
              ),
              DividerLine(),
              CreateButton(),
              DividerLine(),
            ],
          ),
        ),
      ),
    );
  }
}
