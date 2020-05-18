import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';
import 'screens/add_plant.dart';
import 'screens/overview.dart';
import 'screens/my_plants_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        'add_plant': (context) => AddPlant(),
        'my_plants': (context) => MyPlants(),
        'overview': (context) => Overview(),
      },
    );
  }
}
