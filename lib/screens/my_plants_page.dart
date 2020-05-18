import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blume/modules/plant.dart';

class MyPlants extends StatelessWidget {
  List<Plant> plants = [
    Plant(nickname: 'Pothos', waterLevel: 2, waterWeeks: 1),
    Plant(nickname: 'Fern', waterLevel: 3, waterWeeks: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.only(top: 40),
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
          Expanded(
            child: ListView.builder(
              itemCount: plants.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final currentPlant = plants[index];
                return PlantItem(plant: plants[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PlantItem extends StatelessWidget {
  const PlantItem({
    @required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 100,
        width: 375,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  plant.nickname,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 80),
              child: Column(
                children: <Widget>[
                  Text('How much?'),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      //Image from pixelperfect at www.flaticon.com
                      Image.asset('images/dropcolour.png',
                          height: 30, width: 20),
                      //Image from Good Ware at www.flaticon.com
                      plant.waterLevel >= 2
                          ? Image.asset('images/dropcolour.png',
                              height: 30, width: 20)
                          : Image.asset('images/dropbw.png',
                              height: 30, width: 20),
                      plant.waterLevel == 3
                          ? Image.asset('images/dropcolour.png',
                              height: 30, width: 20)
                          : Image.asset('images/dropbw.png',
                              height: 30, width: 20),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    plant.waterWeeks == 1
                        ? Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Weekly',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Every ${plant.waterWeeks} weeks',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                  ],
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
    );
  }
}
