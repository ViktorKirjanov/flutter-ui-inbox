import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String image;

  const UserAvatar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: Colors.grey.shade200,
        ),
      ),
      child: Center(
        child: Container(
          height: 43.0,
          width: 43.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
