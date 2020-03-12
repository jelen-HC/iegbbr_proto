import 'package:flutter/material.dart';
import 'package:iegbbr_proto/menu.dart';
import 'package:iegbbr_proto/filter.dart';
import 'package:provider/provider.dart';
import 'package:iegbbr_proto/providerNotifiers/memberNotifier.dart';

class PartOneOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MemberNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Part 1.1'),
        centerTitle: true,
      ),
      drawer: MyDrawer(appScreen: 'partOneOne'),
      body: Filter(
        pageContent: Consumer<MemberNotifier>(
          builder: (context, tabBar, child) {

            /// Takes lists from "memberNotifier" and creates new lists to insert the "PartOneOne Tab"
            List<Tab> _newMemberTabs;
            List<Widget> _newMemberPages;
            setPartOneOneTab() {
              _newMemberTabs = tabBar.memberTabs.map<Tab>((Tab tab) {
                return tab;
              }).toList();
              _newMemberPages = tabBar.memberPages.map<Widget>((Widget widget) {
                return widget;
              }).toList();
              _newMemberTabs.insert(0, part1_1Tab);
              _newMemberPages.insert(0, part1_1);
            }
            setPartOneOneTab();

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