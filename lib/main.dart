import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
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
          title: const Text('MyApp'),
        ),
        body: Center(child: _widgets.elementAt(_selectedIndex)), //
        bottomNavigationBar: BottomNavigationBar(
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
            backgroundColor: Colors.amber[800],
            onTap: _onItemTapped),
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(fontSize: 30),
          ),
          Icon(
            Icons.newspaper,
            size: 60,
          )
        ],
      ),
    );
  }
}

class LikeWidget extends StatelessWidget {
  const LikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Likes',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 50),
            Text(
              textAlign: TextAlign.center,
              "Hier findest du deine gelikten Nachrichten.",
              style: (TextStyle(fontSize: 20)),
            ),
          ]),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 30),
            Icon(
              Icons.person,
              size: 60,
            ),
            Text("Max Mustermann", style: TextStyle(fontSize: 25)),
          ]),
    );
  }
}
