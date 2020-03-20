import 'package:flutter/material.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class ContentSwitch extends StatelessWidget {

  final String currentRoute;
  final String memberIso;
  final String memberName;

  var memberContentSwitch;

  MemberNotifier memberNotifier;

  ContentSwitch({@required this.currentRoute, @required this.memberIso, @required this.memberName});

  currentRouteSelected() {
    switch (currentRoute) {
      case '/partOneOne':

        String _tableTitleOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneOne']['tableTitleOne'] : 'loading...';
        String _tableTitleTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneOne']['tableTitleTwo'] : '';
        String _tableOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][0]['partOneOne']['tableOne'] : '';
        String _tableTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][0]['partOneOne']['tableTwo'] : '';

        memberContentSwitch =
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.picture_as_pdf, color: Colors.white,),
                      iconSize: 30.0,
                      onPressed: () async {
                        await Printing.layoutPdf(
                            onLayout: (PdfPageFormat format) async => await Printing.convertHtml(
                              format: format,
                              html: '<h2>1.1 Statutes and Regulations for Addressing Pathogens, Biological Agents and Toxins and their Regulatory Authorities</h2><br><br><h2>$memberName</h2><br>' +
                                  _tableTitleOne + _tableOne + _tableTitleTwo + _tableTwo,
                            )
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleOne,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableOne,
                    webView: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleTwo,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableTwo,
                    webView: true,
                  ),
                ),
              ],
            );
        return memberContentSwitch;
        break;
      case '/partOneTwo':

        String _tableTitleOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneTwo']['tableTitleOne'] : 'loading...';
        String _tableTitleTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneTwo']['tableTitleTwo'] : '';
        String _tableTitleThree = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneTwo']['tableTitleThree'] : '';
        String _tableTitleFour = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneTwo']['tableTitleFour'] : '';
        String _tableTitleFive = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneTwo']['tableTitleFive'] : '';
        String _tableOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][1]['partOneTwo']['tableOne'] : '';
        String _tableTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][1]['partOneTwo']['tableTwo'] : '';
        String _tableThree = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][1]['partOneTwo']['tableThree'] : '';
        String _tableFour = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][1]['partOneTwo']['tableFour'] : '';
        String _tableFive = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en'][memberIso][1]['partOneTwo']['tableFive'] : '';

        memberContentSwitch =
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.picture_as_pdf, color: Colors.white,),
                      iconSize: 30.0,
                      onPressed: () async {
                        await Printing.layoutPdf(
                            onLayout: (PdfPageFormat format) async => await Printing.convertHtml(
                              format: format,
                              html: '<h2>1.1 Statutes and Regulations for Addressing Pathogens, Biological Agents and Toxins and their Regulatory Authorities</h2><br><br><h2>$memberName</h2><br>' +
                                  _tableTitleOne + _tableOne + _tableTitleTwo + _tableTwo + _tableTitleThree + _tableThree + _tableTitleFour + _tableFour + _tableTitleFive + _tableFive,
                            )
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleOne,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableOne,
                    webView: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleTwo,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableTwo,
                    webView: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleThree,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableThree,
                    webView: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleFour,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableFour,
                    webView: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Colors.black12,
                  child: HtmlWidget(
                    _tableTitleFive,
                    webView: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(17.0),
                  width: double.infinity,
                  color: Color.fromRGBO(200, 190, 190, 0.1),
                  child: HtmlWidget(
                    _tableFive,
                    webView: true,
                  ),
                ),
              ],
            );
        return memberContentSwitch;
        break;
      case 'partOneThree':
        return;
        break;
      case 'partOneFour':
        return;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    memberNotifier = Provider.of<MemberNotifier>(context);

    currentRouteSelected();

    return memberContentSwitch;
  }
}
