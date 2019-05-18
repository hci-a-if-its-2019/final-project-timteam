import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:grab_mockup_app/home.dart';

void main() {
  initializeDateFormatting('en_US', null).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
// Start the app with the "/" named route. In our case, the app will start
// on the FirstScreen Widget
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => HomeScreen(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
      },
    );
  }
}