import 'package:flutter/material.dart';
import 'package:iegbbr_proto/fabMenu.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';
import 'package:provider/provider.dart';

class Filter extends StatefulWidget {

  /// Page Content being passed to the Filter Widget from a corresponding Widget/Class within the "pages" folder,
  /// which is then handled by the StatefulWidget "_FilterState" to enable/disable the member filters
  Filter({@required this.pageContent});
  final Widget pageContent;

  @override
  _FilterState createState() => _FilterState(pageContent);
}

class _FilterState extends State<Filter> {

  List<Tab> _memberTabs = <Tab>[];
  List<Widget> _memberPages = <Widget>[];

  Widget pageContent;
  _FilterState(this.pageContent);

  @override
  Widget build(BuildContext context) {

    MemberNotifier memberNotifier = Provider.of<MemberNotifier>(context);

    /// filter method for handling the the member toggles and then creating the new
    /// TabList, TabPageList, and TabLength
    filterMembers() {

      setState(() {
        _memberTabs.clear();
        _memberPages.clear();
      });

      if (memberNotifier.ausValue != false) {
        _memberTabs.add(ausTab);
        _memberPages.add(australia);
      }

      if (memberNotifier.canValue != false) {
        _memberTabs.add(canTab);
        _memberPages.add(canada);
      }

      if (memberNotifier.cheValue != false) {
        _memberTabs.add(cheTab);
        _memberPages.add(switzerland);
      }

      if (memberNotifier.deuValue != false) {
        _memberTabs.add(deuTab);
        _memberPages.add(germany);
      }

      if (memberNotifier.dnkValue != false) {
        _memberTabs.add(dnkTab);
        _memberPages.add(denmark);
      }

      if (memberNotifier.fraValue != false) {
        _memberTabs.add(fraTab);
        _memberPages.add(france);
      }

      if (memberNotifier.jpnValue != false) {
        _memberTabs.add(jpnTab);
        _memberPages.add(japan);
      }

      if (memberNotifier.nldValue != false) {
        _memberTabs.add(nldTab);
        _memberPages.add(netherlands);
      }

      if (memberNotifier.sgpValue != false) {
        _memberTabs.add(sgpTab);
        _memberPages.add(singapore);
      }

      if (memberNotifier.ukValue != false) {
        _memberTabs.add(ukTab);
        _memberPages.add(unitedKingdom);
      }

      if (memberNotifier.usaValue != false) {
        _memberTabs.add(usaTab);
        _memberPages.add(unitedStates);
      }

      /// Passing the newly generated TabList, TabPageList, and TabLength to the "memberNotifier" - (Global State)
      setState(() {
          memberNotifier.setTabBar(_memberTabs, _memberPages, _memberTabs.length);
      });

    }

    return FabCircularMenu(
      child: pageContent,
      ringColor: Colors.grey,
      fabOpenColor: Colors.grey,
      options: <Widget>[
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Australia',
            child: Switch(
              activeThumbImage: AssetImage('assets/aus.png'),
              inactiveThumbImage: AssetImage('assets/aus.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.ausValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.ausValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Canada',
            child: Switch(
              activeThumbImage: AssetImage('assets/can.png'),
              inactiveThumbImage: AssetImage('assets/can.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.canValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.canValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Switzerland',
            child: Switch(
              activeThumbImage: AssetImage('assets/che.png'),
              inactiveThumbImage: AssetImage('assets/che.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.cheValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.cheValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Germany',
            child: Switch(
              activeThumbImage: AssetImage('assets/deu.png'),
              inactiveThumbImage: AssetImage('assets/deu.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.deuValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.deuValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Denmark',
            child: Switch(
              activeThumbImage: AssetImage('assets/dnk.png'),
              inactiveThumbImage: AssetImage('assets/dnk.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.dnkValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.dnkValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'France',
            child: Switch(
              activeThumbImage: AssetImage('assets/fra.png'),
              inactiveThumbImage: AssetImage('assets/fra.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.fraValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.fraValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Japan',
            child: Switch(
              activeThumbImage: AssetImage('assets/jpn.png'),
              inactiveThumbImage: AssetImage('assets/jpn.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.jpnValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.jpnValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Netherlands',
            child: Switch(
              activeThumbImage: AssetImage('assets/nld.png'),
              inactiveThumbImage: AssetImage('assets/nld.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.nldValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.nldValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'Singapore',
            child: Switch(
              activeThumbImage: AssetImage('assets/sgp.png'),
              inactiveThumbImage: AssetImage('assets/sgp.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.sgpValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.sgpValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'United Kingdom',
            child: Switch(
              activeThumbImage: AssetImage('assets/uk.png'),
              inactiveThumbImage: AssetImage('assets/uk.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.ukValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.ukValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
        Transform.scale(
          scale: 1.5,
          child: Semantics(
            label: 'United States',
            child: Switch(
              activeThumbImage: AssetImage('assets/usa.png'),
              inactiveThumbImage: AssetImage('assets/usa.png'),
              inactiveThumbColor: Colors.black26,
              value: memberNotifier.usaValue,
              onChanged: (bool value){
                setState(() {
                  memberNotifier.usaValue = value;
                });
                filterMembers();
              },
            ),
          ),
        ),
      ],
    );
  }
}




