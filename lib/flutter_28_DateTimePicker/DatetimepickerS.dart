import 'package:flutter/material.dart';

class DatetimepickerS extends StatelessWidget {
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
  String appbarTitle = 'Datetimepicker';
  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async{
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2030),
      textDirection: TextDirection.ltr,
      initialDatePickerMode: DatePickerMode.day,
      builder: (BuildContext context, Widget child){
        return Theme(
          data: ThemeData(
              primaryColor: Color(0xFFC41A3B),
              primarySwatch: Colors.red,
              accentColor: Color(0xFFC41A3B)
          ),
          child: child,
        );
      }
    );
    if(_datePicker != null && _datePicker != _date){
      setState(() {
        _date = _datePicker;
        print(_date.toString());
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appbarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              elevation: 12,
              color: Color(0xFFC41A3B),
              onPressed: (){
                _selectDate(context);
              },
              child: Text('Date Picker', style: TextStyle(color: Colors.white),),
            ),
            Text(_date.toString(),style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
    );
  }
}
