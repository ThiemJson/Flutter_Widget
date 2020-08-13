import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StylingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Widget',
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
  String title = "Styling widget";
  double paddingValue = 20;
  bool isLightTheme = true;
  void animateedPadding(){
    setState(() {
      paddingValue == 20 ? paddingValue = 100 : paddingValue = 20;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 4,
                  maxWidth: MediaQuery.of(context).size.width
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(paddingValue),
              duration: Duration(seconds: 1),
              curve: Curves.ease,
              child: InkWell(
                child: Container(
                  width: 125,
                  height: 125,
                  color: Colors.deepPurple,
                ),
                onTap: (){
                  setState(() {
                    animateedPadding();
                  });
                },
              ),
            ),
            Theme(
              data: ThemeData(
                primaryColor: Colors.purple
              ),
              child: Container(
                width: 150,
                height: 150,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedTheme(
                duration: Duration(seconds: 5),
                data: isLightTheme ? ThemeData.light() : ThemeData.dark(),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Builder(
                  builder: (context){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          isLightTheme = !isLightTheme;
                        });
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Theme.of(context).primaryColor,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

