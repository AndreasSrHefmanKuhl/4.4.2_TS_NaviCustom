import 'package:flutter/material.dart';
import 'package:navigationa_bar/Screens/like_widget.dart';
import 'package:navigationa_bar/Screens/news_widget.dart';
import 'package:navigationa_bar/Screens/profile_widget.dart';

void main() {
  runApp(const AppHome());
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _MainAppState();
}

class _MainAppState extends State<AppHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgets = <Widget>[
    NewsWidget(),
    LikeWidget(),
    ProfileWidget(),
  ]; //Widget Liste für verschiedene Screens

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }); //funktion zum aufrauf bei tap auf element in navigationbar
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Text('MyApp'),
        ),
        body: Center(child: _widgets.elementAt(_selectedIndex)), //
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.lightGreenAccent,
            backgroundColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Likes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              )
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped),
      ),
    );
  }
}
