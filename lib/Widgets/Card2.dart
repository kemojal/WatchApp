import 'package:flutter/material.dart';
import './WatchDetailPage.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => DetailPage(title: title,))
          );
      },
      child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child:Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          child: Container(
            width: 170, 
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(28.0)
                ),
              color: Colors.black.withOpacity(0.04),
              )
            ),
          ),
      Container(
      
      padding: EdgeInsets.all(0) ,
      width: 170, //148,
      height: 258,
      decoration: BoxDecoration(
          //color: Color(0xffC5C5C5),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 148,
            height: 130,
            margin: EdgeInsets.only(
              bottom: 10
            ),
            decoration: BoxDecoration(
              //color: Colors.blue
              ),
            child: Image(height: 110, image: AssetImage('images/$title.png')),
            ),
          Container(
            //transform: Matrix4.translationValues(0.0, -50.0, 0.0),
            width: 148,
            height: 90,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(28.0))),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Bell & Ross",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500
                      ),
                ),
                Text(
                  "AMBASSADOR",
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300
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
              ],
            ),
          )
        ],
      ),
    )

    ],
    ),
    
    )
    );
  }
}
