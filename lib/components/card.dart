import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Function funct;
  final String text;
  Cards({this.funct, @required this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: funct,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        elevation: 5.0,
        child: Container(
          padding: EdgeInsets.all(5),
          color: Colors.lightBlue,
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lime, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
