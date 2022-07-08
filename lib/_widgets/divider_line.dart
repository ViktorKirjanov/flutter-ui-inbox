import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  final bool fullHeight;
  final bool fullWidth;

  const DividerLine({
    Key? key,
    this.fullHeight = true,
    this.fullWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: fullHeight ? 20.0 : 0,
        horizontal: fullWidth ? 0 : 20.0,
      ),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.blueGrey.shade50,
      ),
    );
  }
}
