import 'package:flutter/material.dart';

class AppFooter extends StatefulWidget {
  int index;
  Function onTap;

  AppFooter(this.index, this.onTap);

  @override
  _AppFooterState createState() => _AppFooterState();
}

class _AppFooterState extends State<AppFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[500],
            width: 0.3,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.index,
        selectedItemColor:  Color(0xff2B50AA),
        onTap: widget.onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
            ),
            title: Text('Updates'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.featured_play_list,
            ),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.today,
            ),
            title: Text('Tasks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment,
            ),
            title: Text('Routines'),
          ),
        ],
      ),
    );
  }
}
