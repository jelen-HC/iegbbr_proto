import 'package:flutter/material.dart';

enum DrawerSelection { home, partOneOne, partOneTwo, partOneThree, partOneFour }

class MyDrawer extends StatefulWidget {
  MyDrawer({@required this.appScreen});
  final String appScreen;

  @override
  _MyDrawerState createState() => _MyDrawerState(appScreen);
}

class _MyDrawerState extends State<MyDrawer> {

  DrawerSelection _drawerSelection;

  final String appScreenFinal;
  _MyDrawerState(this.appScreenFinal);

  currentDrawerSelected() {
    switch (appScreenFinal) {
      case 'home':
        return _drawerSelection = DrawerSelection.home;
        break;
      case 'partOneOne':
        return _drawerSelection = DrawerSelection.partOneOne;
        break;
      case 'partOneTwo':
        return _drawerSelection = DrawerSelection.partOneTwo;
        break;
      case 'partOneThree':
        return _drawerSelection = DrawerSelection.partOneThree;
        break;
      case 'partOneFour':
        return _drawerSelection = DrawerSelection.partOneFour;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    this.currentDrawerSelected();

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/iegbbr-banner.png'),
              ),
            ),
          ),
          Container(
            color: _drawerSelection == DrawerSelection.home ? Colors.grey[300] : null,
            child: ListTileTheme(
              selectedColor: Colors.blueAccent,
              child: ListTile(
                  selected: _drawerSelection == DrawerSelection.home,
                  title: Text('Home'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    setState(() {
                      _drawerSelection = DrawerSelection.home;
                    });
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, '/home');
                  }
              ),
            ),
          ),
          Container(
            color: _drawerSelection == DrawerSelection.partOneOne ? Colors.grey[300] : null,
            child: ListTileTheme(
              selectedColor: Colors.blueAccent,
              child: ListTile(
                  selected: _drawerSelection == DrawerSelection.partOneOne,
                  title: Text('Part 1.1'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, '/partOneOne');
                  }
              ),
            ),
          ),
          Container(
            color: _drawerSelection == DrawerSelection.partOneTwo ? Colors.grey[300] : null,
            child: ListTileTheme(
              selectedColor: Colors.blueAccent,
              child: ListTile(
                  selected: _drawerSelection == DrawerSelection.partOneTwo,
                  title: Text('Part 1.2'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    _drawerSelection = DrawerSelection.partOneTwo;
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, '/partOneTwo');
                  }
              ),
            ),
          ),
          Container(
            color: _drawerSelection == DrawerSelection.partOneThree ? Colors.grey[300] : null,
            child: ListTileTheme(
              selectedColor: Colors.blueAccent,
              child: ListTile(
                  selected: _drawerSelection == DrawerSelection.partOneThree,
                  title: Text('Part 1.3'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, '/partOneThree');
                  }
              ),
            ),
          ),
          Container(
            color: _drawerSelection == DrawerSelection.partOneFour ? Colors.grey[300] : null,
            child: ListTileTheme(
              selectedColor: Colors.blueAccent,
              child: ListTile(
                  selected: _drawerSelection == DrawerSelection.partOneFour,
                  title: Text('Part 1.4'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, '/partOneFour');
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}

