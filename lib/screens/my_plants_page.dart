import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blume/modules/plant.dart';

class MyPlants extends StatelessWidget {
  List<Plant> plants = [
    Plant(nickname: 'Pothos', waterLevel: 2, waterWeeks: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Icon(
              CupertinoIcons.back,
              size: 30,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'My Plants',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 100,
              width: 375,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      plants[0].nickname,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
