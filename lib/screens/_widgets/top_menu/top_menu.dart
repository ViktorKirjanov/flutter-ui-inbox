import 'package:flutter/material.dart';
import 'package:inbox/_widgets/user_avatar.dart';

import '../../../constants.dart';
import '_widgets/logo.dart';
import '_widgets/menu_item.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: _size.width > breakPoint ? 2 : 4,
            child: Logo(),
          ),
          Expanded(
            flex: _size.width > breakPoint ? 12 : 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MenuItem(title: 'Dashboard'),
                    MenuItem(title: 'Inbox', active: true),
                    MenuItem(title: 'List'),
                    MenuItem(title: 'Location'),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.pink.shade900,
                            Colors.red,
                          ],
                          stops: [0.25, 1.0],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    UserAvatar(image: 'assets/images/2.jpg'),
                    SizedBox(width: 10.0),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blueGrey.shade200,
                    ),
                    SizedBox(width: 25.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
