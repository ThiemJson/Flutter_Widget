import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_widget/flutter_12_PageViews/images.dart';

class CustomClipedS extends StatelessWidget {
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
  String appbarTitle = 'Custom Clippeds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipOval(
                child: Image(
                  image: NetworkImage(ironman),
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(120),
                  topLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                  bottomLeft: Radius.circular(120),
                ),
                child: Image(
                  image: NetworkImage(venom),
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipPath(
                clipBehavior: Clip.hardEdge,
                child: Image(
                  image: NetworkImage(WonderWoman),
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

