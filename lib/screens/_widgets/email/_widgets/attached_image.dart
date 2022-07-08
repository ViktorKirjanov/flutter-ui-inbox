import 'package:flutter/material.dart';

class AttachedImage extends StatelessWidget {
  final String image;

  const AttachedImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
