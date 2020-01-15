import 'package:flutter/material.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key key, @required this.fontSize, @required this.topMargin, @required this.headerWidth}) : super(key: key);

  final double fontSize;
  final double topMargin;
  final double headerWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
           //color: Colors.red,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50.0)
          )
        ),
       // width: MediaQuery.of(context).size.width,
        height: 60,
        child: Container(
          alignment: Alignment.center,
          width: headerWidth,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(40.0)
            )
          ),
          child: Text(
            "Heritage Watches", 
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.white
              ),
            ),
          ),
        ),
    );
  }
}