import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(BottomNav());
}

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
