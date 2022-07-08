import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.3],
          colors: [
            Colors.grey.shade100,
            Colors.white,
          ],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
          child: Column(
            children: [
              Container(
                height: 50.0,
                width: double.infinity,
                child: TextButton(
                  child: Row(
                    children: [
                      SizedBox(width: 25.0),
                      SvgPicture.asset(
                        'assets/icons/edit.svg',
                        height: 14.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        'New Message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade800),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
