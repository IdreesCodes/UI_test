import 'package:flutter/material.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';

import 'package:vie_app_ui/views/progress_screen/progress_screen.dart';

import '../home_screen/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomeScreen(), // Screen for the 1st icon
          const ProgressScreen(),
          Center(
            child: Text('Selected Index: $_selectedIndex'),
          ),
          Center(
            child: Text('Selected Index: $_selectedIndex'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Image.asset(AppAssets.iconHomeActive,height: 20,width: 20,)
                : Image.asset(AppAssets.iconHomeInActive, height: 20,width: 20,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ?  Image.asset(AppAssets.iconSettingActive,height: 20,width: 20,)
                : Image.asset(AppAssets.iconSettingInActive, height: 20,width: 20,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? const Icon(Icons.notifications)
                : const Icon(Icons.notifications_none),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outline),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

