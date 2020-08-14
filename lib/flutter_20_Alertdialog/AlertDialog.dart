import 'package:flutter/material.dart';
import 'alert_dialog.dart';
class AlertDialogS extends StatelessWidget {
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
  String appbarTitle = 'AlertDialog';
  bool tappedYes = false;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            final action = await AlertDialogs.yesCancelDialog(context, 'Logout', 'Are you sure ? ');
            print("Trigger");
            if(action == DialogsAction.yes){
              setState(() {
                tappedYes = true;
              });
            }else{
              setState(() {
                tappedYes = false;
              });
            }
          },
          padding: EdgeInsets.all(12.0),
          color: Color(0xFFC41A3B),
          child: Text(' Logout'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
