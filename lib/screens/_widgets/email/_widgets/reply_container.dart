import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReplyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          child: TextField(
            cursorColor: Colors.grey,
            style: TextStyle(color: Colors.grey),
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade100,
              focusColor: Colors.grey.shade100,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(0.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(0.0),
              ),
              contentPadding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
              hintText: 'Start typing for reply',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.transparent,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/attach-paperclip.svg',
                      height: 20.0,
                      color: Colors.grey,
                    ),
                    onPressed: () => print('attach'),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: TextButton(
                    child: SvgPicture.asset(
                      'assets/icons/paper-plane.svg',
                      height: 18.0,
                      color: Colors.white,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade800),
                    ),
                    onPressed: () => print('send'),
                  ),
                ),
                SizedBox(width: 25.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
