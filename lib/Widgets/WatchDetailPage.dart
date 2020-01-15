import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './BottomSheetWidget.dart';
import './CustomBottomSheet.dart';

import 'dart:ui';
//import 'dart:math';
import 'dart:math' as math;

class DetailPage extends StatefulWidget {
  DetailPage({Key key, @required this.title}) : super(key: key);

  final String title;
  double scrollFadeScreenValue;
  
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with SingleTickerProviderStateMixin  {
  AnimationController _controller;
  

  @override
  void initState() {
    super.initState();
    _controller = AnimationController( //<-- initialize a controller
      vsync: this,
      duration: Duration(milliseconds: 600), 
    );
  }

  @override
  void dispose() {
    _controller.dispose(); //<-- and remember to dispose it!
    super.dispose();
  }

  double lerp(double min, double max) => lerpDouble(min, max, _controller.value );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              color: Color(0xffE7E7E7),
              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.height, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                //width: 300,
                //height: 300,
                margin: EdgeInsets.only(
                  bottom: 20
                ),
                decoration: BoxDecoration(
                  //color: Colors.blue
                  ),
                child: Image(width: 180, image: AssetImage('images/heritage1921.png')),
                ),
                Container(
                  alignment: Alignment.center,
                  //color: Colors.red,
                  padding: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  height: 150,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Bell & Ross",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500
                          ),
                    ),
                    Text(
                      "\$ 364",
                      style: TextStyle(
                          color: Color(0xff924D41),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300
                          ),
                      ),
                      Text(
                      "Japanese Quartz movement",
                      style: TextStyle(
                          color: Color(0xff9C9C9C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300
                          ),
                          ),
                          Text(
                      "Japanese Quartz movement",
                      style: TextStyle(
                          color: Color(0xff9C9C9C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300
                          ),
                          ),
                          Text(
                      "Japanese Quartz movement",
                      style: TextStyle(
                          color: Color(0xff9C9C9C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300
                          ),
                          ),
                  ],
                ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    //color: Colors.green,
                    height: 150,
                    padding: EdgeInsets.all(40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(27)) ,
                              color: Color(0xffAA402E),
                              ),
                            alignment: Alignment.center,
                            
                            child: Icon(Icons.keyboard_backspace, color: Colors.white,
                            )
                          ),
                          ),
                          GestureDetector(
                          onTap: (){
                            //print("wow");
                            /*showModalBottomSheet(
                              context: context,
                              builder: (context)=>BottomSheetWidget()
                            );*/
                          },
                          child: Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffAA402E),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300
                          ),
                          ),
                          ),
                          ),
                          GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(27)) ,
                              color: Color(0xffAA402E),
                              ),
                            alignment: Alignment.center,
                            
                            child: Icon(Icons.bookmark_border, color: Colors.white,)
                          ),
                          )
                    ],
                    ),
                    )
            ],
            ),
            ),
         
            CustomBottomSheet(),
          ],
        )
      ),
    );
  }
}