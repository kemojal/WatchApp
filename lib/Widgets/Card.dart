import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0) ,
      width: 160, //148,
      height: 278,
      decoration: BoxDecoration(
          //color: Color(0xffC5C5C5),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            width: 148,
            height: 130,
            decoration: BoxDecoration(
              //color: Colors.blue
              ),
            child: Image(height: 110, image: AssetImage('images/heritage1921.png')),
            ),
          Container(
            //transform: Matrix4.translationValues(0.0, -50.0, 0.0),
            width: 148,
            height: 148,
            /*margin: EdgeInsets.only(
              top: 20
            ),*/
            decoration: BoxDecoration(
                color: Color(0xffE7E6E5),
                borderRadius: BorderRadius.all(Radius.circular(28.0))),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Bell & Ross",
                  style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900
                      ),
                ),
                Text(
                  "AMBASSADOR",
                  style: TextStyle(
                      color: Color(0xffE4E4E4),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w900
                      ),
                      ),
                Text(
                  "\$ 364",
                  style: TextStyle(
                      color: Color(0xff924D41),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900
                      ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
