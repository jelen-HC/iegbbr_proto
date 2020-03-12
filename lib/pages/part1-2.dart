import 'package:flutter/material.dart';
import 'package:iegbbr_proto/menu.dart';
import 'package:iegbbr_proto/filter.dart';
import 'package:provider/provider.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';

class PartOneTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MemberNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Part 1.2'),
        centerTitle: true,
      ),
      drawer: MyDrawer(appScreen: 'partOneTwo'),
      body: Filter(
        pageContent: Consumer<MemberNotifier>(
          builder: (context, tabBar, child) {

            /// Takes lists from "memberNotifier" and creates new lists to insert the "PartOneTwo Tab"
            List<Tab> _newMemberTabs;
            List<Widget> _newMemberPages;
            setPartOneTwoTab() {
              _newMemberTabs = tabBar.memberTabs.map<Tab>((Tab tab) {
                return tab;
              }).toList();
              _newMemberPages = tabBar.memberPages.map<Widget>((Widget widget) {
                return widget;
              }).toList();
              _newMemberTabs.insert(0, part1_2Tab);
              _newMemberPages.insert(0, part1_2);
            }
            setPartOneTwoTab();

            return DefaultTabController(
              length: _newMemberTabs.length,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: TabBar(
                      isScrollable: true,
                      tabs: _newMemberTabs,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: _newMemberPages,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


