import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import '../animations/slide_left_route.dart';

import '../screens/app_screen.dart';

class ConfigurationHeader extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(double.maxFinite);

  ConfigurationHeader();

  Widget _backButton(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        radius: 14,
        child: Icon(
          Icons.close,
          color: Colors.white,
          size: 22,
        ),
        backgroundColor: Colors.black26,
      ),
      onTap: () {
        Navigator.pushReplacement(
          context,
          SlideLeftRoute(
            page: AppScreen(),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(

          // To make Status bar icons color white in Android devices.
          statusBarIconBrightness: Brightness.dark,

          // statusBarBrightness is used to set Status bar icon color in iOS.
          statusBarBrightness: Brightness.dark
          // Here light means dark color Status bar icons.

          ),
    );

    return Container(
      height: 140,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xff2B50AA),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 45,
                  backgroundImage: AssetImage('assets/abstract.jpg'),
                ),
                Positioned(
                  child: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.white,
                    size: 22,
                  ),
                  bottom: 3,
                  right: 3,
                ),
              ],
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Team Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.1,
                  ),
                ),
                Text(
                  ' 4 members',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.1,
                  ),
                ),
              ],
            ),
            Spacer(),
            _backButton(context),
          ],
        ),
      ),
    );
  }

}
