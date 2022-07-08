import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String icon;
  final int? count;
  final bool selected;

  const MenuItem({
    required Key key,
    required this.title,
    required this.icon,
    this.count,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected ? Colors.blue.shade100 : Colors.transparent,
      child: new Material(
        color: Colors.transparent,
        child: new InkWell(
          child: new Container(
            width: double.infinity,
            height: 45.0,
            child: Row(
              children: [
                Container(
                  height: 45.0,
                  width: 70.0,
                  child: Row(
                    children: [
                      if (selected)
                        Row(
                          children: [
                            Container(
                              height: 25.0,
                              width: 3.0,
                              color: Colors.blue.shade800,
                            ),
                            SizedBox(width: 25.0),
                          ],
                        )
                      else
                        SizedBox(width: 25.0),
                      SvgPicture.asset(
                        icon,
                        height: 18.0,
                        color: selected
                            ? Colors.blue.shade800
                            : Colors.blueGrey.shade200,
                      ),
                    ],
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
                Spacer(),
                if (count != null)
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                else
                  SizedBox(width: 25.0),
                SizedBox(width: 30.0),
              ],
            ),
          ),
          onTap: () => print("tapped"),
        ),
      ),
    );
  }
}
