import "dart:math";

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: ClassStateful("Dices"),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ClassStateful extends StatefulWidget {
  final String title;

  ClassStateful(this.title);

  @override
  _ClassStatefulState createState() => _ClassStatefulState();
}

class _ClassStatefulState extends State<ClassStateful> {
  int numer = 1;
  int numer2 = 1;

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(
          width: 12,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 232, 52, 52),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(1),
                  decoration: myBoxDecoration(),
                  child: SizedBox(
                    width: 135,
                    height: 135,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          numer = Random().nextInt(6) + 1;
                        });
                      },
                      child: Text(
                        "$numer",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 35,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                width: 25,
              ),
              Container(
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(1),
                  decoration: myBoxDecoration(),
                  child: SizedBox(
                    width: 135,
                    height: 135,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          numer2 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Text(
                        "$numer2",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}