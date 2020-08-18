import 'package:flutter/material.dart';

class TimepickerS extends StatelessWidget {
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
  String appbarTitle = 'Time picker';
  TimeOfDay _time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _time = TimeOfDay.now();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Center(
        child: ListTile(
          title: Text('Time: ${_time.hour}:${_time.minute}',
          style: TextStyle(fontSize: 40),
          ),
          trailing: Icon(Icons.timer, color: Colors.black54, size: 45,),
          onTap: _pickTime,
        ),
      ),
    );
  }

  _pickTime() async{
    TimeOfDay time = await showTimePicker(context: context, initialTime: _time,
        builder: (BuildContext context, Widget child){
      return Theme(
        data: ThemeData(
          primaryColor: Color(0xFFC41A3B),
          accentColor: Color(0xFFC41A3B),
          primarySwatch: Colors.red
        ), child: child,
      );
    });
    if(time != null){
      _time = time;
    }
  }
}
