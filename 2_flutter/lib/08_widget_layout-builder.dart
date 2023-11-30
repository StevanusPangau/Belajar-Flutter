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
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  const SizedBox(
                    height: 20,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            "assets/foto.jpg",
                            fit: BoxFit.cover,
                          )),
                      const Positioned(
                          top: 80, left: 10, child: Text("Stevanus "))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200"),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const MediaQueryExample(),
                  const SizedBox(height: 40),
                  Container(
                    color: Colors.yellow,
                    height: 300,
                    width: 300,
                    // ? Layout Builder yaitu untuk mengatur layout sesuai dengan constraints yang diberikan dalam sebuah widget Container
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Center(
                        child: Container(
                          color: Colors.blue,
                          width: constraints.maxWidth * 0.8,
                          height: constraints.maxHeight / 2,
                          child: const Center(
                              child: Text("Layout Builder Example")),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 40),
                ]),
          ),
        ),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width / 2,
      height: MediaQuery.of(context).size.height / 5,
      child: const Center(child: Text("Media Query Example")),
    );
  }
}
