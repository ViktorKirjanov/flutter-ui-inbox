import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/logo.svg',
          height: 50.0,
        ),
        SizedBox(width: 10.0),
        Text(
          'Flutter',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
