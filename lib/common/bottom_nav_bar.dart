import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:student_teacher/views/chat.dart';
import 'package:student_teacher/views/homepage.dart';
import 'package:student_teacher/views/profile.dart';
import 'package:student_teacher/views/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body:
          _buildBodyForSelectedTab(), // Use a method to build the body based on the selected tab
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: h * 0.005),
        child: DotNavigationBar(
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: const Color(0xff73544C),
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          onTap: _handleIndexChanged,
          items: [
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: const Color(0xff73544C),
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.chat_bubble_outline),
              selectedColor: const Color(0xff73544C),
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: const Color(0xff73544C),
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.settings_accessibility),
              selectedColor: const Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyForSelectedTab() {
    switch (_selectedTab) {
      case _SelectedTab.home:
        return const HomePage(); // Replace with your Home widget content
      case _SelectedTab.favorite:
        return const Chat(); // Replace with your Favorite widget content
      case _SelectedTab.search:
        return const Profile(); // Replace with your Search widget content
      case _SelectedTab.person:
        return const Settings(); // Replace with your Person widget content
    }
  }
}

enum _SelectedTab { home, favorite, search, person }
