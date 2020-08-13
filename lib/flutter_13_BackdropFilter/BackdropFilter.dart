import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BackdropFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List Views',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String appbarTitle = 'Backdrop filter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image(
              image: NetworkImage('https://photo-1-baomoi.zadn.vn/w1000_r1/2018_10_05_188_28025740/2ca50523da63333d6a72.jpg'),
            ),
          ),
          Center(
            child: ClipRect(  // <-- clips to the 200x200 [Container] below
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  child: Container(

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

