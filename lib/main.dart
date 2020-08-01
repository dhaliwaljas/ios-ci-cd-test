import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';

import 'package:weaver/logic/providers/auth_provider.dart';
import 'package:weaver/logic/providers/tasks_provider.dart';
import 'package:weaver/logic/providers/userprofile_provider.dart';

import 'package:weaver/ui/screens/app_screen.dart';
import 'package:weaver/ui/screens/auth_screen.dart';
import 'package:weaver/ui/screens/configuration_screen.dart';

import 'package:weaver/ui/pages/new_task_page.dart';
import 'package:weaver/ui/screens/splash_screen.dart';

void main() => runApp(Weaver());

class Weaver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => UserProfileProvider(),
          // create: (ctx) => UsersProvider(refresh: false),
        ),
        ChangeNotifierProvider(
          create: (ctx) => TasksProvider(),
          // create: (ctx) => TasksProvider(refresh: false),
        ),
      ],
      child: Consumer<AuthProvider>(
        builder: (ctx, auth, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            backgroundColor: Colors.grey[100],
            canvasColor: Colors.transparent,
          ),
          home: auth.isAuth()
              ? AppScreen()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen(),
                ),
          // initialRoute: auth.isAuth()
          //     ? AppScreen.NAVIGATION_ROUTE
          //     : AuthScreen.NAVIGATION_ROUTE,
          routes: {
            AppScreen.NAVIGATION_ROUTE: (ctx) => AppScreen(),
            ConfigurationScreen.NAVIGATION_ROUTE: (ctx) =>
                ConfigurationScreen(),
            AuthScreen.NAVIGATION_ROUTE: (ctx) => AuthScreen(),
            NewTaskPage.NAVIGATION_ROUTE: (ctx) => NewTaskPage(),
          },
        ),
      ),
    );
  }
}
