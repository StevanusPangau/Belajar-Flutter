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
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Text(
                        "Stevanus Evan Pangau - I'm a Software Engineer - Living in Indonesia",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
                Container(
                  color: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('First Column Child'),
                  ),
                ),
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
                // ? contoh menggunakan stack untuk menampung image dan text
                Stack(
                  children: [
                    // ? contoh menggunakan image
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/foto.jpg",
                          fit: BoxFit.cover,
                        )),
                    // ? menambahkan text di atas image
                    const Positioned(
                        top: 80, left: 10, child: Text("Stevanus "))
                  ],
                ),
                // ? contoh menggunakan circle avatar
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    // ? menggunakan image dari internet
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
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
