import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
          hintText: "search any food",
          border: InputBorder.none,
          suffixIcon: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30),
              child: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
