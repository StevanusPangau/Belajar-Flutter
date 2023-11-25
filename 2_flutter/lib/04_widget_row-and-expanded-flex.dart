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
                // ? Row -> Untuk membuat widget berada dalam satu baris
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // ? Flexible -> Untuk membuat widget dapat menyesuaikan dengan sisa ruang yang tersedia jika lebih maka akan diatur sesuai dengan flex
                    // ? Expanded -> Untuk membuat widget dapat mengambil sisa ruang yang tersedia
                    const Expanded(
                      // ? flex -> Untuk mengatur seberapa besar widget akan mengambil sisa ruang yang tersedia
                      //* flex: 2,
                      child: Text(
                        "Stevanus Evan Pangau - I'm a Software Engineer - Living in Indonesia",
                        maxLines: 1,
                        // ? TextOverflow -> Untuk mengatur bagaimana teks yang tidak muat ditampilkan
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
