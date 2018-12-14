import 'package:flutter/material.dart';

class TextControl extends StatefulWidget{
  @override
    State <StatefulWidget> createState(){
      return _TextControlState;
    }
}

class _TextControlState extends State<TextControl>{
    String _mainText = 'originalString';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Column(children: [
          RaisedButton(
            onPressed: () {
              setState(() {
                _mainText = 'changed text';
              });
            },
            child: Text('change text'),
          ),
          Text(_mainText),
        ]),
      ),
    );
  }
}