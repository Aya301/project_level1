import 'dart:developer';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<MyApp>{
  double result =0.0;
  double firstValue, secondValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('Simple Calculator',style: TextStyle(color: Colors.black,fontSize: 50),),
              centerTitle: true,
              backgroundColor: Colors.red.shade900
          ),
          body: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child :TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'First number',
                        ),
                        onChanged: (value){
                          setState(() {
                            firstValue = double.parse(value);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'second number',
                          ),
                          onChanged: (Value){
                            setState(() {
                              firstValue = double.parse(Value);
                            });
                          },
                        )
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: RaisedButton(
                    child: Text('=',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        result = firstValue + secondValue;
                      });
                    },
                    color: Colors.black,
                  ) ,
                ),
                Text(
                  'Result:$result',
                  style: TextStyle(fontSize: 19),
                )
              ],
            ),
          ),
        )
    );
  }

}