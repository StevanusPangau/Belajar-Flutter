import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen One'),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: TextButton(
          onPressed: () {
            // route popUntil mirip dengan pop, namun popUntil akan pop sampai kondisi yang ditentukan
            // bisa juga menggunakan pushReplacementNamed
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Text('Go Back'),
        )));
  }
}
