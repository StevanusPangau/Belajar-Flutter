import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.amber)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Basics'),
        ),
        body: const Center(
          child: Text('Hello World!!!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('FAB pressed'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
