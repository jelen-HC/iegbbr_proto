import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:iegbbr_proto/tempDevFiles/pdfPreview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:iegbbr_proto/menu.dart';

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pdfWidgets;

class PartOneFour extends StatefulWidget {
  @override
  _PartOneFourState createState() => _PartOneFourState();
}

class _PartOneFourState extends State<PartOneFour> {

  final pdf = pdfWidgets.Document();

  createPdf() {
    pdf.addPage(
      pdfWidgets.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: pdfWidgets.EdgeInsets.all(32),
        build: (pdfWidgets.Context context) {
          return <pdfWidgets.Widget>[
            pdfWidgets.Header(
              level: 0,
              child: pdfWidgets.Text('TEST PDF')
            )
          ];
        }
      )
    );
  }

  Future savePdf() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
    File file = File("$documentPath/test.pdf");
    file.writeAsBytesSync(pdf.save());
  }

  Future printPdf() async {
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => await Printing.convertHtml(
          format: format,
          html: '<html><body><p>Hello!</p></body></html>',
        ));
  }

  @override
  Widget build(BuildContext context) {

    MemberNotifier memberNotifier = Provider.of<MemberNotifier>(context);

    final tableTitleOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneOne']['tableTitleOne'] : 'loading...';
    final tableTitleTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['tableTitles'][0]['partOne']['partOneOne']['tableTitleTwo'] : '';
    final tableOne = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['aus'][0]['partOneOne']['tableOne'] : '';
    final tableTwo = memberNotifier.memberData.isNotEmpty ? memberNotifier.memberData[0]['en']['aus'][0]['partOneOne']['tableTwo'] : '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Part 1.4'),
        centerTitle: true,
      ),
      drawer: MyDrawer(appScreen: 'partOneFour'),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      Center(
                          child: Icon(
                            Icons.flag,
                            color: Colors.indigo,
                            size: 120.0,
                          )),
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
                  SizedBox(height: 15.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.picture_as_pdf, color: Colors.white,),
                        iconSize: 30.0,
                        onPressed: () async {
                          createPdf();
                          await savePdf();
                          await Printing.layoutPdf(
                              onLayout: (PdfPageFormat format) async => await Printing.convertHtml(
                                format: format,
                                html: '<h2>1.1 Statutes and Regulations for Addressing Pathogens, Biological Agents and Toxins and their Regulatory Authorities</h2><br><br><h2>Australia</h2><br>' + tableTitleOne + tableOne + tableTitleTwo + tableTwo,
                              ));

//                  Directory documentDirectory = await getApplicationDocumentsDirectory();
//                  String documentPath = documentDirectory.path;
//                  String fullPath = "$documentPath/test.pdf";
//
//                  Navigator.push(context, MaterialPageRoute(
//                    builder: (context) => PdfPreview(path: fullPath),
//                  ));

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
          ],
        )
      ),
    );
  }
}

