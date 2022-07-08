import 'package:flutter/material.dart';
import 'package:inbox/core/helpers/responsive_helper.dart';

import '../constants.dart';
import '_widgets/email/email.dart';
import '_widgets/email_list/email_list.dart';
import '_widgets/side_menu/side_menu.dart';
import '_widgets/top_menu/top_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveHelper(
        key: Key('main-screen-layout'),
        mobile: EmailList(),
        tablet: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: EmailList(),
                  ),
                  Expanded(
                    flex: 9,
                    child: EmailContent(),
                  ),
                ],
              ),
            ),
          ],
        ),
        desktop: Column(
          children: [
            TopMenu(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: _size.width > breakPoint ? 2 : 4,
                    child: SideMenu(),
                  ),
                  Expanded(
                    flex: _size.width > breakPoint ? 4 : 5,
                    child: EmailList(),
                  ),
                  Expanded(
                    flex: _size.width > breakPoint ? 8 : 10,
                    child: EmailContent(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
