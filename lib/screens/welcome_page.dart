import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 80),
                  child: Text(
                    'Good Morning, Connor',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '1 plant needs your attention today',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 45),
                Row(
                  children: <Widget>[
                    SizedBox(width: 20),
                    Container(
                      child: Image.asset(
                        'images/open-doodles-plant.png',
                        height: 150,
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PlantBox(
                  onPressed: () {
                    Navigator.pushNamed(context, 'add_plant');
                  },
                  text: 'Add Plant',
                  image: 'images/tools.png'),
              //Icon by Smash Icons from www.flaticons.com
              SizedBox(width: 50),
              PlantBox(
                  onPressed: () {
                    Navigator.pushNamed(context, 'my_plants');
                  },
                  text: 'My Plants',
                  image: 'images/conservation.png'),
              //Icon by Flat Icons from www.flaticons.com
            ],
          ),
          SizedBox(height: 70),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, 'overview');
            },
            child: Container(
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Text('Overview', style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(width: 70),
                  Image.asset('images/gardening.png', height: 100, width: 100),
                  //Icon by freepik at www.flaticons.com
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class PlantBox extends StatelessWidget {
  final String text;
  final String image;
  final Function onPressed;

  PlantBox({this.text, this.image, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        height: 175,
        width: 135,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Image.asset(image, height: 80, width: 100),
            Padding(padding: EdgeInsets.all(20), child: Text(text)),
          ],
        ),
      ),
    );
  }
}
