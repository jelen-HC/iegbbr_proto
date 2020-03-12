import 'package:flutter/material.dart';

class Who extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          Center(
              child: Icon(
                Icons.motorcycle,
                color: Colors.black45,
                size: 150.0,
              )
          ),
          SizedBox(height: 50.0),
          Center(
            child: Text(
              'World Health Organization',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ],
      ),
    );
  }
}