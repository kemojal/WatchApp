import 'dart:ui';
//import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'SheetHearder.dart';
import 'SheetScrollView.dart';
//import 'dart:math';

class CustomBottomSheet extends StatefulWidget {
  CustomBottomSheet({Key key}) : super(key: key);

  //final Function scrollFadeScreenValue;

  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> with SingleTickerProviderStateMixin  {

  AnimationController _controller; //<-- Create a controller
  double get maxHeight => MediaQuery.of(context).size.height * 0.9;


  double get headerTopMargin => lerp(10, 0); //<-- Add new property

  double get headerFontSize => lerp(14, 24);    //<-- Add new property
  double get scrollFadeValue => lerp(0, 1); 
  double get scrollFadeScreenValue => lerp(0, 1);
  double get scrollMargin => lerp(0, 250.0);
  //double get minWidth  = MediaQuery.of(context).size.width * 0.8;
  double get headerWidth => lerp(
    MediaQuery.of(context).size.width * 0.4, MediaQuery.of(context).size.width * 0.8);    //<-- Add new property

  double minHeight = 60;
  //double x = math

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
  //lerpDouble(min, max, _controller.value); //<-- lerp any value based on the controller



  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child){
        return Positioned(
           height: lerp(minHeight, maxHeight),
      left: 0,
      right: 0,
      bottom: 0,
      //padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          final bool isOpen = _controller.status == AnimationStatus.completed;
          _controller.fling(velocity: isOpen ? -2 : 2); //<-- ...snap the sheet in proper direction
          },
          onVerticalDragUpdate: _handleDragUpdate,  //<-- Add verticalDragUpdate callback
          onVerticalDragEnd: _handleDragEnd,
        //color: Colors.green,
        //width: MediaQuery.of(context).size.width,
        child: Container(
          height: minHeight,
          //width: 100,
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(70))
            ),
            child:Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 25,
                  child: Container( 
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                      ),
                      child:  SheetScrollView(scrollFadeValue: scrollFadeValue, scrollMargin:scrollMargin),
                  ),
                ),
                
                SheetHeader(
                  fontSize: headerFontSize,
                  topMargin: headerTopMargin,
                  headerWidth: headerWidth,
                  ),
                  
               ],
             )
           ),
      ),
    );
      },
    );
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    _controller.value -= details.primaryDelta / maxHeight; //<-- Update the _controller.value by the movement done by user.
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight; //<-- calculate the velocity of the gesture
    if (flingVelocity < 0.0)
      _controller.fling(velocity: math.max(2.0, -flingVelocity)); //<-- either continue it upwards
    else if (flingVelocity > 0.0)
      _controller.fling(velocity: math.min(-2.0, -flingVelocity)); //<-- or continue it downwards
    else
      _controller.fling(velocity: _controller.value < 0.5 ? -2.0 : 2.0); //<-- or just continue to whichever edge is closer
  }

  /*void _toggle() {
    final bool isOpen = _controller.status == AnimationStatus.completed;
    _controller.fling(velocity: isOpen ? -2 : 2); //<-- ...snap the sheet in proper direction
  }*/
}