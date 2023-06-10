import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 200,
      color: Colors.green,
    ),
    Icon(
      Icons.camera,
      size: 200,
      color: Colors.teal,
    ),
    Icon(
      Icons.chat,
      size: 200,
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Nav Demo"),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "call",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "camera",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "chat",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }
}
