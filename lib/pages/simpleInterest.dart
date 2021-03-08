import 'package:flutter/material.dart';
import 'dart:math';
// ignore: camel_case_types
class simpleInterest extends StatefulWidget {
  @override
  _simpleInterest createState() => _simpleInterest();

}

class _simpleInterest extends State<simpleInterest>{
  String p1 ;
  String r1;
  String n1;
  String _finalInterest = "";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
          title:Text("Simple Interest CALCULATOR"),
          elevation: 0.3
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(25.0),
                  child: TextField(
                    onChanged: (value) => p1 = value ,
                    decoration: InputDecoration(
                        labelText: "Enter Principal Amount"
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),

              Container(
                  padding: EdgeInsets.all(25.0),
                  child: TextField(
                    onChanged: (value) => r1 = value ,
                    decoration: InputDecoration(
                        labelText: "Enter Interest Rate"
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),

              Container(
                  padding: EdgeInsets.all(25.0),
                  child: TextField(
                    onChanged: (value) =>n1 = value,
                    decoration: InputDecoration(
                        labelText: "Enter Time(Years)."
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),

              FlatButton(onPressed: _emiCalc, child: Text("Calculate Simple Interest"),
                  color: Colors.redAccent[400],padding: EdgeInsets.all(10.0)
              ),

              _finalInterestWidget(_finalInterest)

            ],
          ),
        ),
      ),
    );
  }

  void _emiCalc() {
    double a =0.0;
    double p = double.parse(p1);
    double r = double.parse(r1);
    double n = double.parse(n1);


    a= (p*r*n)/100;

    _finalInterest=a.toStringAsFixed(2);
    setState(() {

    });

  }


  Widget _finalInterestWidget(finalInterest) {
    bool canShow =false;
    String _finalInterest = finalInterest;
    if(_finalInterest.length>0)
    {
      canShow=true;
    }
    return
      Container(
          margin: EdgeInsets.only(top :25.0),
          child: canShow?Column(
              children:[
                Text("Your Simple Interest is",
                    style: TextStyle(color: Colors.black,
                        fontSize:20  ,fontWeight: FontWeight.bold
                    )
                ),
                Container(color: Colors.blue,
                    child: Text(_finalInterest,
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold
                        ))
                )
              ]
          ) : Container()
      );
  }
}
