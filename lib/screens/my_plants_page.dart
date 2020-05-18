import 'package:flutter/material.dart';
import 'package:blume/modules/plant.dart';

class MyPlants extends StatelessWidget {
  List<Plant> plants = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, top: 80),
            child: Text(
              'My Plants',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          )
        ],
      ),
    );
  }
}
