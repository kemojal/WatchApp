import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:watchapp/Widgets/Card.dart' as prefix0;
//import './Widgets/Card2.dart';
import './Widgets/RowWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        canvasColor: Colors.transparent,
      ),
      home: MyHomePage(title: 'Watchers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
        actions: [
        Icon(Icons.search),
    ],
        leading: Builder(
            builder: (context) => IconButton(
                  icon: new Icon(Icons.more_horiz),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
        ),

      ), */
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.height, 
              color: Color(0xffE7E7E7),
              ),
              ),
              Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.height * 0.93, 
              
              decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0),
              )
              ),
              ),
              ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.height * 0.92, 
              
              decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70.0),
                topRight: Radius.circular(70.0),
              )
              ),
              ),
              ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(color: Colors.transparent, width: 100, height: 10,),),
              Expanded(
                flex: 10,
                child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: 0
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80.0),
                topRight: Radius.circular(80.0),
                //bottomLeft: Radius.circular(180.0),
              )
              ),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RowWidget(),
                RowWidget(),
                RowWidget(),
                
              ],
            ),
          ),
          ),

          ],)
        ],
        )
    );

    /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.
    //scaffold
  }
}
