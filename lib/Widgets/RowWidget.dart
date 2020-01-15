import 'package:flutter/material.dart';
import './Card2.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CardWidget(title: "heritage1921"),
          CardWidget(title: "heritage-1959"),
      ],),
    );
  }
}