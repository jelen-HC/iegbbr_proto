import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:provider/provider.dart';

class Fra extends StatefulWidget {
  @override
  _FraState createState() => _FraState();
}

class _FraState extends State<Fra> {

  @override
  Widget build(BuildContext context) {

    MemberNotifier memberNotifier = Provider.of<MemberNotifier>(context);

    final tableTitleOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneOne']['tableTitleOne'] : 'loading...';
    final tableTitleTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneOne']['tableTitleTwo'] : '';
    final tableOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['fra'][0]['partOneOne']['tableOne'] : '';
    final tableTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['fra'][0]['partOneOne']['tableTwo'] : '';

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Center(
                    child: Icon(
                      Icons.flag,
                      color: Colors.blueAccent,
                      size: 120.0,
                    )),
                Flexible(
                  child: Center(
                    child: Text(
                      'France',
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
        ),
      ),
    );
  }
}