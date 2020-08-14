import 'package:flutter/material.dart';

class GlobalCovid{
   final int NewConf;
   final int TotalConf;
   final int NewDet;
   final int TotalDet;
   final int NewRe;
   final int TotalRe;

  GlobalCovid({
  @required this.NewConf,
  @required this.NewDet,
  @required this.NewRe,
  @required this.TotalDet,
  @required this.TotalConf,
  @required this.TotalRe,
  });

  // ignore: missing_return
  factory GlobalCovid.fromJson(Map<String, dynamic> json){
    return GlobalCovid(
      NewConf: json['NewConfirmed'],
      NewDet:  json['NewDeaths'],
      NewRe:  json['NewRecovered'],
      TotalConf:  json['TotalConfirmed'],
      TotalDet: json['TotalDeaths'],
      TotalRe:  json['TotalRecovered']
    );
  }
}