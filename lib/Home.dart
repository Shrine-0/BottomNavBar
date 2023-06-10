import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  // static const List _text = [
  //   Image(
  //     image: NetworkImage(
  //         "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
  //   ),
  //   Image(
  //     image: NetworkImage(
  //         "https://i.pinimg.com/474x/69/44/39/694439b3031503a7564eda9e24f673eb.jpg"),
  //   ),
  //   Image(
  //     image: NetworkImage(
  //         "https://t3.ftcdn.net/jpg/03/02/31/66/360_F_302316661_mwwHgrXkBWAg0JSKGIowZzvGSxmUR554.jpg"),
  //   ),
  // ];
  static const List<Widget> _text = <Widget>[
    TextField(),
    Text("camera"),
    Text("message"),
  ];
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
          child: Column(
            children: [
              _pages.elementAt(_selectedIndex),
              IndexedStack(
                index: _selectedIndex,
                children: _text,
              ),
            ],
          ),
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
