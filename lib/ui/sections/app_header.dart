import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../animations/slide_right_route.dart';

import '../screens/configuration_screen.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final username;
  final Widget rightWidget;

  AppHeader(this.username, this.rightWidget);

  @override
  Size get preferredSize => Size.fromHeight(double.maxFinite);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(

          // To make Status bar icons color white in Android devices.
          statusBarIconBrightness: Brightness.dark,

          // statusBarBrightness is used to set Status bar icon color in iOS.
          statusBarBrightness: Brightness.light
          // Here light means dark color Status bar icons.

          ),
    );

    // var newNotification = false;
    var newNotification = true;

    Widget notifi() {
      return newNotification
          ? Container(
              width: 13.0,
              height: 13.0,
              decoration: BoxDecoration(
                color: Color(0xffF93943),
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
            )
          : Container();
    }

    Widget userAvatar() {
      return GestureDetector(
        child: CircleAvatar(
          radius: 18,
          child: Text(
            'JD',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Color(0xff2B50AA),
        ),
        onTap: () {
          // Navigator.pushReplacement(
          //   context,
          //   SlideRightRoute(
          //     page: ConfigurationScreen(),
          //   ),
          // );
        },
      );
    }

    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[500],
            width: 0.3,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                userAvatar(),
                Positioned(
                  child: notifi(),
                  top: -2.5,
                  right: -2.5,
                ),
              ],
            ),
            SizedBox(width: 12),
            Text(
              username,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.1,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            rightWidget,
          ],
        ),
      ),
    );
  }
}
