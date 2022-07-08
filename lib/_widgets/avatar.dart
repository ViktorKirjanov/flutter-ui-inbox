import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final bool isOnline;

  const Avatar({
    Key? key,
    required this.image,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: 65.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          width: 2.0,
          color: isOnline ? Colors.blue.shade400 : Colors.grey.shade200,
        ),
      ),
      child: Center(
        child: Container(
          height: 56.0,
          width: 56.0,
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
