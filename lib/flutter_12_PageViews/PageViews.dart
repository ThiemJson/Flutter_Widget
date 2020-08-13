import 'package:flutter/material.dart';
import 'images.dart';
class PageViews extends StatelessWidget {
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
  String appbarTitle = 'Page Views';
  final List<String> images =[
    ironman,
    capA,
    WonderWoman,
    deadpool,
    venom
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.5),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.all(12),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
