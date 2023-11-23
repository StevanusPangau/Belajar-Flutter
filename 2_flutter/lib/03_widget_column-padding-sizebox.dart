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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Basics'),
        ),
        body: Container(
          color: Colors.pink,
          child: Column(
              // ? mainAxisSize -> Untuk mengatur ukuran Column
              mainAxisSize: MainAxisSize.max,
              // ? crossAxisAlignment -> Untuk mengatur posisi isi Column secara horizontal
              crossAxisAlignment: CrossAxisAlignment.start,
              // ? mainAxisAlignment -> Untuk mengatur posisi isi Column secara vertical
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.green,
                  // ? padding -> Untuk mengatur jarak antar widget (gunakan refactor dan wrap padding)
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('First Column Child'),
                  ),
                ),
                // ? SizedBox -> Untuk membuat jarak antar widget
                const SizedBox(
                  height: 20,
                  //* width: 300,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('Hello World',
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Last Column Child"),
                ),
              ]),
        ),
      ),
    );
  }
}
