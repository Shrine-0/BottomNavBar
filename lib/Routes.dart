import 'dart:js';

import 'package:flutter/material.dart';

import 'Home.dart';

import 'Routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes_name.home_route:
        {
          return MaterialPageRoute(builder: (context) => Home());
        }
      default:
        {
          return MaterialPageRoute(builder: (context) {
            return Scaffold(
              body: Text("No routes found"),
            );
          });
        }
    }
  }
}
