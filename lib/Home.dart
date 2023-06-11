import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index" + _controller.index.toString());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Nav Demo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: TabBar(
              controller: _controller,
              tabs: const <Widget>[
                Tab(icon: Icon(Icons.flight)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_car)),
              ],
            ),
          ),
          body:
              //   child: Column(
              //     children: [
              // _pages.elementAt(_selectedIndex),
              // IndexedStack(
              //   index: _selectedIndex,
              //   children: _text,
              // ),
              TabBarView(
            controller: _controller,
            children: const <Widget>[
              Icon(
                Icons.flight,
                size: 250,
                color: Colors.amber,
              ),
              Icon(
                Icons.directions_transit,
                size: 250,
                color: Colors.amber,
              ),
              Icon(
                Icons.directions_car,
                size: 250,
                color: Colors.amber,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black38,
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
          // ],
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
