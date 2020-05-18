import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPlant extends StatefulWidget {
  @override
  _AddPlantState createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {
  bool pressed1 = false;
  bool pressed2 = false;
  bool pressed3 = false;
  int waterLevel = 0;

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
              'Add a plant',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Give your plant a name',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text('How much water does your plant need?')),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pressed1 == false) {
                              pressed1 = true;
                              waterLevel++;
                            } else if (pressed1 == true) {
                              pressed1 = false;
                              waterLevel--;
                            }
                          });
                        },
                        child: pressed1
                            ? Image.asset('images/dropcolour.png')
                            : Image.asset('images/dropbw.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pressed2 == false) {
                              pressed2 = true;
                              waterLevel++;
                            } else if (pressed2 == true) {
                              pressed2 = false;
                              waterLevel--;
                            }
                          });
                        },
                        child: !pressed2
                            ? Image.asset('images/dropbw.png')
                            : Image.asset('images/dropcolour.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pressed3 == false) {
                              pressed3 = true;
                              waterLevel++;
                            } else if (pressed3 == true) {
                              pressed3 = false;
                              waterLevel--;
                            }
                          });
                        },
                        child: !pressed3
                            ? Image.asset('images/dropbw.png')
                            : Image.asset('images/dropcolour.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
