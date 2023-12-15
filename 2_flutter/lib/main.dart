import 'package:basics/12_route-buttom-navigation.dart';
import 'package:basics/presentation/navigation_example_screen/screen_one.dart';
import 'package:basics/presentation/navigation_example_screen/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.blue)),
        home: const RouteButtomNavigation(),
        // ? membuat route name
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const RouteButtomNavigation(),
          '/screenOne': (BuildContext context) => const ScreenOne(),
          '/screenTwo': (BuildContext context) => const ScreenTwo(),
        });
  }
}
