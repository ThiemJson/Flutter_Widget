import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Input widget',
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
  String title ='Input widget';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: 'Enter First Name'
                ),
                validator: (value){
                  if(value.isEmpty){
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              TextFormField(
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    hintText: 'Enter last Name'
                ),
                validator: (value){
                  if(value.isEmpty){
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: (){
                      if(formKey.currentState.validate()){

                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

