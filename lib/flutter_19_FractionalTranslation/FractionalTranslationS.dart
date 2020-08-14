import 'package:flutter/material.dart';
import '../flutter_12_PageViews/images.dart';

class FractionalTraslationS extends StatelessWidget {
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
  String appbarTitle = 'FractionalTranslation';
  final List<String> images = [ironman, venom, WonderWoman, capA, deadpool , aquaman, superman, batman];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Center(
        child: SizedBox.fromSize(
          size: Size.fromHeight(550.0),
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.5),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.network(images[index], fit: BoxFit.cover,
                      height: 500,),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
