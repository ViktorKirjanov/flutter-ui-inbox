import 'package:flutter/material.dart';
import 'package:inbox/screens/_widgets/email/email.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: EmailContent(),
      ),
    );
  }
}
