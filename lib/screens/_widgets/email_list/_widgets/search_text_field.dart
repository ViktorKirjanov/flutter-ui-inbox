import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      style: TextStyle(color: Colors.grey),
      decoration: new InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        focusColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: EdgeInsets.only(left: 15, right: 15),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
