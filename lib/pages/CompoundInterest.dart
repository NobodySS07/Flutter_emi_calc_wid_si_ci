import 'package:flutter/material.dart';
import 'dart:math';

class CompoundInterest extends StatefulWidget {
  @override
  _CompoundInterest createState() => _CompoundInterest();

}

class _CompoundInterest extends State<CompoundInterest>{
  String p1 ;
  String r1;
  String n1;
  String _finalInterest = "";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
          title:Text("Compound Interest Calculator"),
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
                        labelText: "Enter no. of Months."
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),

              FlatButton(onPressed: _compoundInterest, child: Text("Calculate Compound Interest"),
                  color: Colors.redAccent[400],padding: EdgeInsets.all(10.0)
              ),

              _finalInterestWidget(_finalInterest)

            ],
          ),
        ),
      ),
    );
  }

  void _compoundInterest() {
    double a =0.0;
    double p = double.parse(p1);
    double r = double.parse(r1)/12/100;
    double n = double.parse(n1);


    a= (p*pow(1+r,n));

    _finalInterest=(a-p).toStringAsFixed(2);
    setState(() {

    });

  }


  Widget _finalInterestWidget(finalInterest) {
    bool canShow =false;
    String _finalInterest= finalInterest;
    if(_finalInterest.length>0)
    {
      canShow=true;
    }
    return
      Container(
          margin: EdgeInsets.only(top :25.0),
          child: canShow?Column(
              children:[
                Text("Your Interest Compounded Monthly is",
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
