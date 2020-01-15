import 'package:flutter/material.dart';

class SheetScrollView extends StatelessWidget {
  const SheetScrollView({Key key, @required this.scrollFadeValue, @required this.scrollMargin }) : super(key: key);
  final double scrollFadeValue;
  final double scrollMargin;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: scrollFadeValue,
      //padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                  ),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 0.0
                    ),
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height * 0.53,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)
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
                            height: scrollMargin,
                            padding: EdgeInsets.only(
                              left: 0,
                              top: 15.0, //////////////////////////////////////////////////////
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
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xffBBBBBB),
                                  fontSize: 18.0,
                                  ),
                                text: 'Given his minimalistic mentality and with modernity in mind, our creator drew on watches from this era as inspiration to conceptualize the Ambassador Heritage 1921. Unlike many art deco watches, the interface of our watch is missing the ornateness of a classic wristwatch from the 1920’s; but, this is deliberate. We have logically crafted this piece to provide everything that was beneficial from many popular styles during that year, like the broad spring lug and a deliberately designed wide face.'
                              ),
                              ),
                          ), 
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xffBBBBBB),
                                  fontSize: 18.0,
                                  ),
                                text: 'Japanese Quartz Movement'
                              ),
                              ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  //color: Colors.red,
                                  width:  MediaQuery.of(context).size.width * 0.65,
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      style: TextStyle(
                                        color: Color(0xffBBBBBB),
                                        fontSize: 18.0,
                                        ),
                                      text: 'The Japanese Quartz Movement is a pioneer in the world of watches because of the preciseness this mechanism uses to keep time. This type of movement depends on a crystal oscillator to generate a motion with an almost exact frequency, meaning a Japanese Quartz Movement will always keep time better than a mechanical watch.'
                                    ),
                                    ),
                                ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 20
                                    ),
                                    decoration: BoxDecoration(
                                      //color: Colors.blue
                                      ),
                                    child: Image(width: 100, image: AssetImage('images/descriptions/block3-764.png')),
                                    ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xffBBBBBB),
                                  fontSize: 18.0,
                                  ),
                                text: 'Luxurious Watch Box'
                              ),
                              ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xffBBBBBB),
                                  fontSize: 18.0,
                                  ),
                                text: 'One Watch Multiple Styles'
                              ),
                              ),
                          ) ,
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xffBBBBBB),
                                  fontSize: 18.0,
                                  ),
                                text: 'With various types of interchangeable bands, your watch can be worn at any occasion. Whether you want a day-to-day watch or fashion accessory for an evening out, our versatile straps will give you the freedom to master every look.'
                              ),
                              ),
                          ) ,
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                               border: Border(
                                  bottom: BorderSide( 
                                   color: Color(0xffF7F7F7),
                                    width: 3.0,
                                  ),
                                 )
                              //border:
                              ),
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xffBBBBBB),
                                  fontSize: 18.0,
                                  ),
                                text: 'It is as just as important to store your watch in style as it is to wear it. Recognizing this, we have designed our custom high-quality leather watchbox, made to keep your watch in top shape for many years to come. The box is engraved with the model name of your watch and comes with a neat broschure that explains every feature of your new timepiece.'
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
                bottom: 150,
                left: 50,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_downward),
                  backgroundColor: Colors.red,
                  ),
              ),
          ],
        ),
      ),
    );
  }
}