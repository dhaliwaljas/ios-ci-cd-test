import 'package:flutter/material.dart';
class ConfigurationFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton.icon(
            label: Text(
              'Teams',
              style: TextStyle(
                  color: Color(0xff2B50AA),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            icon: Icon(
              Icons.supervised_user_circle,
              color: Color(0xff2B50AA),
              size: 28,
            ),
            onPressed: () {},
          ),
          FlatButton.icon(
            label: Text(
              'Settings',
              style: TextStyle(
                  color: Color(0xffB9B9B9),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            icon: Icon(
              Icons.settings,
              color: Color(0xffB9B9B9),
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
