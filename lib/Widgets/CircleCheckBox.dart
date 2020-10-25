import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleCheckBox extends StatefulWidget {
  String _text;
  bool _value;

  CircleCheckBox(this._text, this._value);

  @override
  _CircleCheckBoxState createState() => _CircleCheckBoxState();
}

class _CircleCheckBoxState extends State<CircleCheckBox> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Text(widget._text),
      Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: widget._value
              ? Icon(
            Icons.check,
            size: 30.0,
            color: Colors.white,
          )
              : Icon(
            Icons.check_box_outline_blank,
            size: 30.0,
            color: Colors.blue,
          ),
        ),
      ),
        ],
      ) ,
    );
  }

}
