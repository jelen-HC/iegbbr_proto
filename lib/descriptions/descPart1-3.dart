import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DescPartOneThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Center(
                    child: Icon(
                      Icons.assignment,
                      color: Colors.black38,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      '1.3 Purpose, Scope and Activities Covered of the Regulatory Systems',
                      style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Html(
              data: """
                  <p>This section aims to answer simple questions concerning biosecurity and biosafety frameworks across IEGBBR members, 
                  namely what the focus of their statutes and legislation is, whether it covers animal pathogens and genetically modified 
                  organisms, the types of activities with the regulated biological agents that are covered, and if occupational health 
                  and safety is incorporated in their regulatory system.</p>
              """,
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              defaultTextStyle: TextStyle(fontSize: 15.0),
            ),
            SizedBox(height: 35.0),
          ],
        ),
      ),
    );
  }
}