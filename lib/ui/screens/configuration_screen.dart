import 'package:flutter/material.dart';

import '../pages/configuration_page.dart';

import '../sections/configuration_header.dart';
// import '../sections/configuration_footer.dart';

class ConfigurationScreen extends StatelessWidget {

  static const NAVIGATION_ROUTE = '/configurationScreen';

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: ConfigurationHeader(),
      body: ConfigurationPage(),
      // bottomNavigationBar: ConfigurationFooter(),
    );
  }
}
