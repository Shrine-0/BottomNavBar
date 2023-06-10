import 'package:flutter/material.dart';

import 'Home.dart';
import 'Routes.dart';
import 'Routes_name.dart';

void main() {
  runApp(BottomNav());
}

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: Routes_name.home_route,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
