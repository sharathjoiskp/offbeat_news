import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:offbeat_news/View/content_page.dart';

import 'analysis_page.dart';
import 'calendor_page.dart';
import 'cycle_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CyclePage(),
    CalendorPage(),
    Text(
      'Task',
    ),
    AnalysisPage(),
    ContentPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Cycle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: 90,
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                )),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_present_sharp),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Content',
          ),
        ],
        iconSize: 30,
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        selectedLabelStyle: TextStyle(
            color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
