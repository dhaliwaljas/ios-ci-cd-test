import 'package:flutter/material.dart';

class ConfigurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.settings),
              Text('Option 1', style: TextStyle(fontSize: 16),),
            ],
          )
        ],
      ),
    );
  }
}
