import 'package:flutter/material.dart';
import 'package:iegbbr_proto/contentSwitch.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:provider/provider.dart';

class Deu extends StatefulWidget {
  @override
  _DeuState createState() => _DeuState();
}

class _DeuState extends State<Deu> {

  @override
  Widget build(BuildContext context) {

    /// The provider might be needed for the country name to switch languages via the data imported - REMOVE IF NOT NEEDED
    //MemberNotifier memberNotifier = Provider.of<MemberNotifier>(context);

    var route = ModalRoute.of(context);
    String currentRoute;

    if(route != null){
      currentRoute = route.settings.name;
    }

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
                  color: Colors.black54,
                  size: 120.0,
                )),
                Flexible(
                  child: Center(
                    child: Text(
                      'Germany',
                      style: TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            ContentSwitch(currentRoute: currentRoute, memberIso: 'deu', memberName: 'Germany'),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
