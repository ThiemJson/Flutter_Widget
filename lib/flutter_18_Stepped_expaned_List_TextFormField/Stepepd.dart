import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../flutter_05_Snackbar/snackbar_widget.dart';

class SteppedS extends StatelessWidget {
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
  String appbarTitle = 'Stepped';
  int _currentStep = 0 ;
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  StepperType _stepperType = StepperType.vertical;
  switchStepType(){
    setState(() {
       return _stepperType == StepperType.vertical ? _stepperType = StepperType.horizontal :   _stepperType = StepperType.vertical;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Stepper(
        steps: _stepper(),
        physics: ClampingScrollPhysics(),
        currentStep: this._currentStep,
        type: _stepperType,
        onStepTapped: (step){
          setState(() {
            _scaffoldState.currentState.showSnackBar(
              SnackBar(
                duration: Duration(seconds: 3),
                elevation: 20,
                behavior: SnackBarBehavior.fixed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)
                  )
                ),
                backgroundColor: Color(0xFFC41A3B),
                content: Text('Keep step by step please', style: TextStyle(color: Colors.white),),
              )
            );
          });

        },
        onStepContinue: (){
          print("On stepp conntinue");
          setState(() {
            if(this._currentStep < this._stepper().length - 1){
              this._currentStep = this._currentStep + 1;
            }
            else{
              print('Complete');
            }
          });
        },

        onStepCancel: (){
          print("On stepp cancel");
          setState(() {
            if(this._currentStep > 0 ){
              this._currentStep = this._currentStep - 1;
            }else{
              this._currentStep = 0;
            }
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFC41A3B),
        onPressed: switchStepType,
        child: Icon(Icons.swap_horizontal_circle, color: Colors.white,),
      ),
    );
  }

  StepState getStep(_currentS){
      if( _currentS == _currentStep) return StepState.editing;
      else if( _currentS > _currentStep ) return StepState.disabled;
      else return StepState.complete;
  }


  List<Step> _stepper(){
    List<Step> _steps = [
      Step(
          title: Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFC41A3B))),
          content:  Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'First Name'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Last Name'
                ),
              ),
            ],
          ),
        isActive: _currentStep >=0,
        state: getStep(0),
      ),
      Step(
          title: Text('Email', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFC41A3B)),),
          content:  Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email address'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Recovery Email'
                ),
              ),
            ],
          ),
        isActive: _currentStep >= 1,
        state: getStep(1)
      ),
      Step(
          title: Text('Moblie', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFC41A3B))),
          content:  Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Mobile No.'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Alternative Mobile No.'
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 2,
          state: getStep(2)
      ),
      Step(
          title: Text('Address',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFC41A3B))),
          content:  Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Address N0.1'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Adress No.2.'
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 3,
          state: getStep(3)
      ),
      Step(
          title: Text('Password' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFC41A3B)) ),
          content:  Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password.'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Confirm Password.'
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 4,
          state: getStep(4)
      )
    ];
    return _steps;
  }
}



