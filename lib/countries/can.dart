import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class Can extends StatefulWidget {
  @override
  _CanState createState() => _CanState();
}

class _CanState extends State<Can> {

  Future memberData;

  @override
  void initState() {
    super.initState();
    memberData = _getData();
  }

  _getData() async {
    String _memberData = await DefaultAssetBundle.of(context).loadString('assets-data/memberContent.json');
    return json.decode(_memberData);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: FutureBuilder(
          future: memberData,
          builder: (context, AsyncSnapshot<dynamic> snapshot) {
            final tableTitleOne = snapshot.hasData ? snapshot.data[0]['en']['can'][0]['partOneOne']['titleTableOne'] : 'loading...';
            final tableTitleTwo = snapshot.hasData ? snapshot.data[0]['en']['can'][0]['partOneOne']['titleTableTwo'] : '';
            final tableOne = snapshot.hasData ? snapshot.data[0]['en']['can'][0]['partOneOne']['tableOne'] : '';
            final tableTwo = snapshot.hasData ? snapshot.data[0]['en']['can'][0]['partOneOne']['tableTwo'] : '';
            return Column(
              children: <Widget>[
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Center(
                        child: Icon(
                          Icons.flag,
                          color: Colors.red,
                          size: 120.0,
                        )
                    ),
                    Flexible(
                      child: Center(
                        child: Text(
                          'Canada',
                          style: TextStyle(
                            fontSize: 35.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    tableTitleOne,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    tableOne,
                    webView: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    tableTitleTwo,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    tableTwo,
                    webView: true,
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            );
          },
        ),
      ),
    );
  }
}
