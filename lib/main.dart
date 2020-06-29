import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool water = false;
  bool animal = false;
  bool tree = false;
  bool heart = false;
  bool isIcons = true;
  Color bgcolor = Colors.brown[100];
  Color bgshadowcolor = Colors.brown[50];
  Color iconcolor = Colors.black;
  IconData heartIcon = FontAwesomeIcons.heartBroken;
  String text = 'Press the eye to see the world situation';
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('./images/world.png')),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.grey[350],
                    spreadRadius: 6,
                    blurRadius: 10,
                  )
                ],
                shape: BoxShape.circle),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 50,right: 20,left: 20),
            
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  text,textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,),
                ))),
        Align(
          alignment: Alignment.center,
          child: isIcons
              ? IconButton(
                  onPressed: () {
                    Timer(Duration(seconds: 1), () {
                      setState(() {
                        water = true;
                      });
                    });
                    Timer(Duration(seconds: 2), () {
                      setState(() {
                        animal = true;
                      });
                    });
                    Timer(Duration(seconds: 3), () {
                      setState(() {
                        tree = true;
                      });
                    });
                    Timer(Duration(seconds: 4), () {
                      setState(() {
                        heart = true;
                        isIcons = false;
                        text = 'Don\'t cry you have chance to save it!';
                      });
                    });
                  },
                  iconSize: 40,
                  color: Colors.black45,
                  icon: Icon(Icons.remove_red_eye),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      bgcolor = Colors.blue[100];
                      bgshadowcolor = Colors.blue[50];
                     Timer(Duration(seconds: 3),(){
                        setState(() {
                          iconcolor = Colors.green;
                      heartIcon = FontAwesomeIcons.solidHeart;
                      text = 'Thank you :) now vote me';
                      isSaved = true;
                        });
                     });
                    });
                  },
                  child: Container(
                    child: isSaved ? Icon(Icons.favorite, color: Colors.red,size: 32):Text(
                      'Save',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              water
                  ? AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: bgcolor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 5,
                              color: bgshadowcolor,
                              blurRadius: 5)
                        ],
                      ),
                      child: Icon(
                        FontAwesomeIcons.handHoldingWater,
                        color: iconcolor,
                        size: 40,
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                    ),
              SizedBox(
                height: 90,
              ),
              tree
                  ? AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: bgcolor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 5,
                              color: bgshadowcolor,
                              blurRadius: 5)
                        ],
                      ),
                      child: Icon(
                        FontAwesomeIcons.tree,
                        color: iconcolor,
                        size: 40,
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                    ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              animal
                  ? AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: bgcolor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 5,
                              color: bgshadowcolor,
                              blurRadius: 5)
                        ],
                      ),
                      child: Icon(
                        FontAwesomeIcons.dog,
                        color: iconcolor,
                        size: 40,
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(seconds: 5),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                    ),
              SizedBox(
                width: 110,
              ),
              heart
                  ? AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: bgcolor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 5,
                              color: bgshadowcolor,
                              blurRadius: 5)
                        ],
                      ),
                      child: Icon(
                        heartIcon,
                        color: iconcolor,
                        size: 40,
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(seconds: 5),
                      curve: Curves.bounceIn,
                      height: 60,
                      width: 60,
                    ),
            ],
          ),
        ),
      ]),
    );
  }
}
