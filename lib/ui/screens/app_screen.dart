import 'package:flutter/material.dart';
import 'package:weaver/logic/services/data_synchronizer_service.dart';

import '../sections/app_header.dart';
import '../sections/app_footer.dart';

import '../pages/new_task_page.dart';
import '../pages/updates_page.dart';
import '../pages/feed_page.dart';
import '../pages/tasks_page.dart';
import '../pages/routines_page.dart';

class AppScreen extends StatefulWidget {
  static const NAVIGATION_ROUTE = '/appScreen';

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _popUpSheet(context, widget) {
    showModalBottomSheet(
      isScrollControlled: true,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      context: context,
      builder: (context) {
        return Container(
          height: 700,
          child: SafeArea(child: widget),
        );
      },
    );
  }

  Widget rightWidgetIcon(
      IconData icon, IconData icon2, Function onTap, Function onTap2) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Icon(
            icon,
            color: Colors.black,
            size: 22,
          ),
          onTap: onTap,
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          child: Icon(
            icon2,
            color: Colors.black,
            size: 22,
          ),
          onTap: onTap2,
        ),
      ],
    );
  }

  Widget rightWidget() {
    if (_selectedIndex == 0) {
    } else if (_selectedIndex == 1) {
    } else if (_selectedIndex == 2) {
      return rightWidgetIcon(
        Icons.refresh,
        Icons.add,
        () {
          DataSynchronizerService(context).synchronizeTasks();
        },
        () {
          Navigator.of(context).pushNamed(NewTaskPage.NAVIGATION_ROUTE);
        },
      );
    } else if (_selectedIndex == 3) {}
    return Container();
  }

  List<Widget> _widgetOptions = <Widget>[
    UpdatesPage(),
    FeedPage(),
    TasksPage(),
    RoutinesPage(),
  ];

  @override
  void initState() {
    super.initState();
    DataSynchronizerService(context).synchronizeAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader('Weaver', rightWidget()),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: AppFooter(_selectedIndex, _onItemTapped),
    );
  }
}
