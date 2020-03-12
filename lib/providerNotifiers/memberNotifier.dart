import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iegbbr_proto/countries/aus.dart' as aus;
import 'package:iegbbr_proto/countries/can.dart' as can;
import 'package:iegbbr_proto/countries/che.dart' as che;
import 'package:iegbbr_proto/countries/deu.dart' as deu;
import 'package:iegbbr_proto/countries/dnk.dart' as dnk;
import 'package:iegbbr_proto/countries/fra.dart' as fra;
import 'package:iegbbr_proto/countries/jpn.dart' as jpn;
import 'package:iegbbr_proto/countries/nld.dart' as nld;
import 'package:iegbbr_proto/countries/sgp.dart' as sgp;
import 'package:iegbbr_proto/countries/uk.dart' as uk;
import 'package:iegbbr_proto/countries/usa.dart' as usa;
import 'package:iegbbr_proto/countries/who.dart' as who;
import 'package:iegbbr_proto/descriptions/descPart1-1.dart' as partOneOne;
import 'package:iegbbr_proto/descriptions/descPart1-2.dart' as partOneTwo;
import 'package:iegbbr_proto/descriptions/descPart1-3.dart' as partOneThree;

/// Content Pages for the TabViews
final part1_1 = partOneOne.DescPartOneOne();
final part1_2 = partOneTwo.DescPartOneTwo();
final part1_3 = partOneThree.DescPartOneThree();

final australia = aus.Aus();
final canada = can.Can();
final switzerland = che.Che();
final germany = deu.Deu();
final denmark = dnk.Dnk();
final france = fra.Fra();
final japan = jpn.Jpn();
final netherlands = nld.Nld();
final singapore = sgp.Sgp();
final unitedKingdom = uk.Uk();
final unitedStates = usa.Usa();
final worldHealth = who.Who();

/// Tabs for the TabBars
final part1_1Tab = Tab(text: 'Overview');
final part1_2Tab = Tab(text: 'Overview');
final part1_3Tab = Tab(text: 'Overview');

final ausTab = Tab(text: 'AUS');
final canTab = Tab(text: 'CAN');
final cheTab = Tab(text: 'CHE');
final deuTab = Tab(text: 'DEU');
final dnkTab = Tab(text: 'DNK');
final fraTab = Tab(text: 'FRA');
final jpnTab = Tab(text: 'JPN');
final nldTab = Tab(text: 'NLD');
final sgpTab = Tab(text: 'SGP');
final ukTab = Tab(text: 'UK');
final usaTab = Tab(text: 'USA');
final whoTab = Tab(text: 'WHO');

/// Provider Notifier Class for the members/filter - (Controls Global State)
class MemberNotifier with ChangeNotifier {

  /// Boolean values for the filter widget
  bool ausValue = true;
  bool canValue = true;
  bool cheValue = true;
  bool deuValue = true;
  bool dnkValue = true;
  bool fraValue = true;
  bool jpnValue = true;
  bool nldValue = true;
  bool sgpValue = true;
  bool ukValue = true;
  bool usaValue = true;
  bool whoValue = true;

  /// Initial TabBarList
  List<Tab> _memberTabs = <Tab>[
    ausTab,
    canTab,
    cheTab,
    deuTab,
    dnkTab,
    fraTab,
    jpnTab,
    nldTab,
    sgpTab,
    ukTab,
    usaTab,
  ];

  /// Initial TabPageList
  List<Widget> _memberPages = <Widget>[
    australia,
    canada,
    switzerland,
    germany,
    denmark,
    france,
    japan,
    netherlands,
    singapore,
    unitedKingdom,
    unitedStates,
  ];

  /// Initial TabBarLength
  int _memberLength = 11;

  /// Getters and Setters for updating the TabBarList, TabPageList, and TabBarLength
  UnmodifiableListView<Tab> get memberTabs => UnmodifiableListView(_memberTabs);
  UnmodifiableListView<Widget> get memberPages => UnmodifiableListView(_memberPages);
  get memberLength => _memberLength;

  setTabBar (List newTabList, List newPageList, int newLength) {
    _memberTabs = newTabList;
    _memberPages = newPageList;
    _memberLength = newLength;
    notifyListeners();
  }

}