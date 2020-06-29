import 'package:flutter/material.dart';
import 'game_page.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

GameBoard board = GameBoard();
void main() {
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF232428),
          appBar: AppBar(
            backgroundColor: Colors.grey[800],
            title: Center(
              child: Text('Tic Tac Toe'),
            ),
          ),
          body: SafeArea(
            child: Phoenix(child: board),
          ),
          floatingActionButton: ClearView(),
        ),
      );
}

class ClearView extends StatefulWidget {
  @override
  _ClearViewState createState() => _ClearViewState();
}

class _ClearViewState extends State<ClearView> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          setState(() {
            Phoenix.rebirth(context);
          });
        },
        child: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            //Phoenix.rebirth(context);
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
        ));
  }
}
