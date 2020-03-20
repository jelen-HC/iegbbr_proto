import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  MemberNotifier memberNotifier;

  _getData() async {
    String _memberData = await DefaultAssetBundle.of(context).loadString('assets-data/memberContent.json');
    memberNotifier.memberData = await jsonDecode(_memberData);
    Future.delayed(Duration(seconds: 2), () {Navigator.pushReplacementNamed(context, '/home');});
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {

    memberNotifier = Provider.of<MemberNotifier>(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}