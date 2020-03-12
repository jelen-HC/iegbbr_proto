import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DescPartOneTwo extends StatelessWidget {
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
                      '1.2 Biosafety and Biosecurity-Related Definitions and Biosafety Risk Group Designations',
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
                  <p>The tables in this section capture the legislative and regulatory definitions of terms and concepts, such as pathogens, biological agents, 
                  biosafety, biosecurity, and other related terms. In addition, definitions and terminologies related to risk groups, biocontainment levels and 
                  biosecurity and biosafety oversight tools of human and animal pathogens and toxins are covered here</p>
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