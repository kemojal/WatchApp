import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            child:Container(
              padding: const EdgeInsets.only(
                top: 40.0
                ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.53,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
                )
              ),
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            //color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                              bottom: 5.0
                            ),
                            child: 
                            Column(
                              children: <Widget>[
                                Text( " The Ambassador", 
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32.0
                                  ),
                        ),
                        Text( " The Heritage 1921", 
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32.0
                            ),
                        ),
                              ],
                            ),
                        
                      ),
                        
                      ],
                      ),
                      Text(" Every second counts", style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        height: 250.0,
                        padding: EdgeInsets.only(
                          left: 15.0,
                          top: 15.0,
                          bottom: 15.0
                        ),
                          child:
                            ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0)
                                      )
                                      ),
                                    width: 160.0,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image(width: 180, image: AssetImage('images/horizontal/1_1-zoom.png')),),
                                      ) 
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0)
                                      )
                                      ),
                                    width: 160.0,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image(width: 180, image: AssetImage('images/horizontal/1_2-zoom.png')),),
                                      ) 
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0)
                                      )
                                      ),
                                    width: 160.0,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image(width: 180, image: AssetImage('images/horizontal/1_3-zoom.png')),),
                                      ) 
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0)
                                      )
                                      ),
                                    width: 160.0,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image(width: 180, image: AssetImage('images/horizontal/1_1-zoom.png')),),
                                      ) 
                                  ),
                                ],
                              ),
                        ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              color: Color(0xffBBBBBB),
                              //fontSize: 18.0,
                              ),
                            text: 'Given his minimalistic mentality and with modernity in mind, our creator drew on watches from this era as inspiration to conceptualize the Ambassador Heritage 1921. Unlike many art deco watches, the interface of our watch is missing the ornateness of a classic wristwatch from the 1920’s; but, this is deliberate. We have logically crafted this piece to provide everything that was beneficial from many popular styles during that year, like the broad spring lug and a deliberately designed wide face.'
                          ),
                          ),
                      ) 
                    ],
                    ),
                ],
              ),
            ),
          
          ),
          Positioned(
            top: 0,
            child:Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              color: Color(0xffAA402E),
              borderRadius: BorderRadius.all(
                Radius.circular(50.0)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('\$650', style: TextStyle(color: Colors.white)),
                Text(' | ', style: TextStyle(color: Colors.white)),
                Text('ADD TO CART', style: TextStyle(color: Colors.white)),
            ],),
          ),
          )
        ],
      ),
    );
  }
}