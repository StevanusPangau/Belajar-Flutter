import 'package:basics/presentation/counter/counter_screen.dart';
import 'package:basics/presentation/list/list_screen.dart';
import 'package:basics/presentation/widget_examples/widget_examples_screen.dart';
import 'package:flutter/material.dart';

class RouteButtomNavigation extends StatefulWidget {
  const RouteButtomNavigation({super.key});

  @override
  State<RouteButtomNavigation> createState() => _RouteButtomNavigationState();
}

class _RouteButtomNavigationState extends State<RouteButtomNavigation> {
  // ? current index yaitu untuk menentukan halaman mana yang sedang aktif
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // ? untuk menentukan halaman mana yang sedang aktif
        index: _currentIndex,
        children: const [
          WidgetExamplesScreen(),
          CounterScreen(),
          ListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // ? untuk mengubah state dari current index saat menu di klik akan berpindah halaman
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "examples"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
        ],
      ),
    );
  }
}
