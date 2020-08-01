import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Complete',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.15,
              ),
            ),
            Text(
              'To-Do',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ));
  }
}
