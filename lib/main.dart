import 'package:flutter/material.dart';
import 'package:iegbbr_proto/pages/home.dart';
import 'package:iegbbr_proto/pages/loading.dart';
import 'package:iegbbr_proto/pages/part1-1.dart';
import 'package:iegbbr_proto/pages/part1-2.dart';
import 'package:iegbbr_proto/pages/part1-3.dart';
import 'package:iegbbr_proto/pages/part1-4.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
  create: (context) => MemberNotifier(),
  child:   MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/partOneOne': (context) => PartOneOne(),
      '/partOneTwo': (context) => PartOneTwo(),
      '/partOneThree': (context) => PartOneThree(),
      '/partOneFour': (context) => PartOneFour(),
    },
    theme: ThemeData().copyWith(
      primaryColor: Colors.blueGrey,
    ),
  ),
));


