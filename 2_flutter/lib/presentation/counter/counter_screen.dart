import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  late int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
        ),
        body: Center(
          child: Text(
            _counter.toString(),
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: _counter >= 0 ? Colors.green : Colors.red),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                heroTag: 'btn1',
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.remove, color: Colors.white),
              ),
              FloatingActionButton(
                heroTag: 'btn2',
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                backgroundColor: Colors.green,
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
