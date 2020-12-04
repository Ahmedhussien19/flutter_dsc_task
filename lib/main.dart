import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<MyApp> {
  double result = 0.0;
  double firstVal;
  double secondVal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0D22),
        scaffoldBackgroundColor: Color(0xff090C21),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1D1F33),
          title: Text(
            "SIMPLE CALCULATOR",
            style: TextStyle(letterSpacing: 3.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: "First Number"),
                      onChanged: (value) {
                        setState(
                          () {
                            firstVal = double.parse(value);
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: "Second Number"),
                      onChanged: (value) {
                        setState(
                          () {
                            secondVal = double.parse(value);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Choose what operation you want to do :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                children: <Widget>[
                  RaisedButton(
                    color: Color(0xff1D1F43),
                    onPressed: () {
                      return result = firstVal + secondVal;
                    },
                    child: Text(
                      '+',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    color: Color(0xff1D1F43),
                    onPressed: () {
                      return result = firstVal - secondVal;
                    },
                    child: Text(
                      '-',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    color: Color(0xff1D1F43),
                    onPressed: () {
                      return result = firstVal * secondVal;
                    },
                    child: Text(
                      'x',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    color: Color(0xff1D1F43),
                    onPressed: () {
                      return result = firstVal / secondVal;
                    },
                    child: Text(
                      '÷',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: RaisedButton(
                  child: Text(
                    '=',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    setState(
                      () {
                        return result;
                      },
                    );
                  },
                ),
              ),
              Text(
                'THE RESULT IS : \n \n $result',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
