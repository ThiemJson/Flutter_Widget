import 'package:flutter/material.dart';
import 'package:flutter_widget/flutter_99_TestAPT/getData.dart';
import 'GlobalCovid.dart';
class TestAPI extends StatelessWidget {

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
  String appbarTitle = 'TEST API COVID-19';
  Future<GlobalCovid> futureGlobalcovid;
  String newConf = 'New Confirmed: ';
  String tolConf = 'Total Confirmed: ';
  String newDet = 'New Deaths: ';
  String tolDet = 'Total Deaths: ';
  String newReco = 'New Recovered: ';
  String tolReco = 'Total Recovered: ';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureGlobalcovid = fetchGlobalCovid();
    futureGlobalcovid.then((data){
      setState(() {
        newConf+=data.NewConf.toString();
        tolConf+=data.TotalConf.toString();
        newDet+=data.NewDet.toString();
        tolDet+=data.TotalDet.toString();
        newReco+=data.NewRe.toString();
        tolReco+=data.TotalRe.toString();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle),),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(newConf, style: TextStyle(fontSize: 25),),
              Text(tolConf, style: TextStyle(fontSize: 25),),
              Text(newDet, style: TextStyle(fontSize: 25),),
              Text(tolDet, style: TextStyle(fontSize: 25),),
              Text(newReco, style: TextStyle(fontSize: 25),),
              Text(tolReco, style: TextStyle(fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}
