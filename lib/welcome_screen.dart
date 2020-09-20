import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/background.jpg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Cards(
              text: 'New Game',
              funct: () {
                Navigator.pushNamed(context, '/page1');
              }),
          Cards(
            text: 'Quit Game',
            funct: () {
              SystemNavigator.pop(); // quit the app
            },
          ),
        ],
      ),
    );
  }
}

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
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lime, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
