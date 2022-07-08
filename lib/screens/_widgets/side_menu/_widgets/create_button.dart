import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
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
                      SizedBox(width: 25.0),
                      Container(
                        height: 18.0,
                        width: 18.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/add.svg',
                            height: 10.0,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      // SizedBox(width: 25.0),
                    ],
                  ),
                ),
                Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
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
