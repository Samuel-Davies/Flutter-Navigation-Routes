import 'package:flutter/material.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey[900],
        // scaffoldBackgroundColor: Colors.purpleAccent,
      ),
      // you should change theme
      // theme: ThemeData(
      //   primaryColor: Colors.purple,
      //   //accentColor: Colors.deepOrange,
      //   scaffoldBackgroundColor: Colors.red[100],
      //   fontFamily: 'Raleway',
      // ),

      // use intial route instead, now that you have setup your routes
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
