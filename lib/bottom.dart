import 'package:app_main/home_fragment.dart';
import 'package:app_main/search_fragment.dart';
import 'package:app_main/settings_fragment.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selectedIndex =0;
  List<Widget> fragments = [HomeFragment(),ProfileFragment(),SettingsFragment()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fragments[selectedIndex],
bottomNavigationBar: BottomNavigationBar(
  currentIndex: selectedIndex,
  onTap: (index){
    setState(() {
      selectedIndex =index;
    });
  },
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),
    label: "Home"
    ),
    BottomNavigationBarItem(icon: Icon(Icons.search_rounded),
        label: "Search"
    ),
    BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: "Settings"
    ),
  ],
),
    );
  }
}
