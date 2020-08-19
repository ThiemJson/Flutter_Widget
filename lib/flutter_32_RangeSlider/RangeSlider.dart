import 'package:flutter/material.dart';
class RangeSliderS extends StatelessWidget {
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
  String appbarTitle = 'Range Slider';
  double _lowValue = 10.0;
  double _highValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(_lowValue.toString(), style: TextStyle(fontSize: 32),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(_highValue.toString(), style: TextStyle(fontSize: 32),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: RangeSlider(
                min: 0.0,
                max: 100.0,
                labels: RangeLabels(_lowValue.toString(), _highValue.toString()),
                divisions: 1000,
                activeColor: Color(0xFFC41A3B),
                onChanged: (_range){
                  setState(() {
                    _lowValue = _range.start;
                    _highValue = _range.end;
                  });
                },
                values: RangeValues(_lowValue, _highValue),
              ),
            )
          ],
        ),
      ),
    );
  }
}

