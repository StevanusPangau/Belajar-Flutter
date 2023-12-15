import 'package:basics/presentation/navigation_example_screen/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          // ? Navtion pushReplacement untuk mengganti halaman yang sedang ditampilkan jadi behavior rootnya itu seperti halaman pertama
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ScreenOne()));
        },
        child: const Text('Go To Screen One'),
      )),
    );
  }
}
