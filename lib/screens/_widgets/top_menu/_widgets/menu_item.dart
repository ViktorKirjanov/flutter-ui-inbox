import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final bool active;

  const MenuItem({
    Key? key,
    required this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            color: active ? Colors.pink.shade800 : Colors.blueGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
