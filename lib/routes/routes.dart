import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

// seporating routes so your can mange and development

// do this 1st then move the main.dart
class RouteManager {
  static const String homePage = '/';
  static const String secondPage = '/secondPage';
  static const String thirdPage = '/thirdPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;
    if (settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case secondPage:
        return MaterialPageRoute(
          builder: (context) => const SecondPage(),
        );

      case thirdPage:
        return MaterialPageRoute(
          builder: (context) => ThirdPage(
            name: valuePassed['name'],
          ),
        );
      default:
        throw const FormatException('Route not found! check routes again');
    }
  }
}
