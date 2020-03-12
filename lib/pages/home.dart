import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iegbbr_proto/menu.dart';
import 'package:iegbbr_proto/filter.dart';

//Color appBarColor = Color(0xff001966);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //automaticallyImplyLeading: false,
        //searchBar: true,
        title: Text("IEGBBR"),
      ),
      drawer: MyDrawer(appScreen: 'home'),
      body: Filter(
        pageContent: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Center(
                child: Text('International Experts Group of Biosafety and Biosecurity Regulators',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87, fontSize: 21.0),
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                child: Image(
                  height: 250.0,
                  width: 250.0,
                  image: AssetImage('assets/iegbbr-logo.png'),
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                child: Text('The Compendium of International Biosafety and Biosecurity Oversight Systems for Human and Animal Pathogens and Toxins',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
