import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:iegbbr_proto/menu.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class PartOneFour extends StatefulWidget {
  @override
  _PartOneFourState createState() => _PartOneFourState();
}

class _PartOneFourState extends State<PartOneFour> {

  Future memberData;

  @override
  void initState() {
    super.initState();
    memberData = _getData();
  }

  _getData() async {
    String _memberData = await DefaultAssetBundle.of(context).loadString('assets-data/test.json');
    return json.decode(_memberData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Part 1.4'),
        centerTitle: true,
      ),
      drawer: MyDrawer(appScreen: 'partOneFour'),
      body: SingleChildScrollView(
        child: Container(
          child: FutureBuilder(
            future: memberData,
            builder: (context, AsyncSnapshot<dynamic> snapshot) {
              final tableTitleOne = snapshot.hasData ? snapshot.data[0]['en']['aus'][0]['partOne']['titleTableOne'] : 'loading...';
              final tableTitleTwo = snapshot.hasData ? snapshot.data[0]['en']['aus'][0]['partOne']['titleTableTwo'] : '';
              final tableOne = snapshot.hasData ? snapshot.data[0]['en']['aus'][0]['partOne']['tableOne'] : '';
              final tableTwo = snapshot.hasData ? snapshot.data[0]['en']['aus'][0]['partOne']['tableTwo'] : '';
              return Column(
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      Center(
                          child: Icon(
                            Icons.flag,
                            color: Colors.indigo,
                            size: 120.0,
                          )
                      ),
                      Flexible(
                        child: Center(
                          child: Text(
                            'Australia',
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0),
                  Html(
                    data: tableTitleOne,
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Colors.black12,
                    defaultTextStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Html(
                    data: tableOne,
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Color.fromRGBO(200, 190, 190, 0.1),
                    defaultTextStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Html(
                    data: tableTitleTwo,
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Colors.black12,
                    defaultTextStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Html(
                    data: tableTwo,
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Color.fromRGBO(200, 190, 190, 0.1),
                    defaultTextStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 50.0),
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
      ),
    );
  }
}

//HtmlWidget(
//myData[0]['en']['aus'][0]['partOne']['tableOne'],
//webView: true,
//)

