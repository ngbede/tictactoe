import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String name;
  final Function funct;
  ActionButton({this.name, this.funct});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0XFFCCE6F1),
        ),
        child: FlatButton(
          onPressed: funct,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
