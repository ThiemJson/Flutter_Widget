import 'package:flutter/material.dart';

class GlobalSnackbar{
  final String msg;
  const GlobalSnackbar({
    @required this.msg
  });
  static show(
     BuildContext context,
     String msg
     ){
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 2),
        elevation: 20,
        backgroundColor: Colors.purple,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          )
        ),
        action: SnackBarAction(
          textColor: Colors.white,
          label: 'OK',
          onPressed: (){
            //GlobalSnackbar.show(context, msg);
          },
        ),
      )
    );
  }
}