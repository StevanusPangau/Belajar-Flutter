import 'package:basics/12_route-buttom-navigation.dart';
import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/navigation_example_screen/screen_one.dart';
import 'package:basics/presentation/navigation_example_screen/screen_two.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lighTheme,
          darkTheme: AppTheme.darkTheme,
          home: const RouteButtomNavigation(),
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const RouteButtomNavigation(),
            '/screenOne': (BuildContext context) => const ScreenOne(),
            '/screenTwo': (BuildContext context) => const ScreenTwo(),
          });
    });

    // * Data lama
    // return MaterialApp(
    //     // ? gunakan themeMode untuk mengatur tema aplikasi jika ingin tes dark/light theme
    //     // themeMode: ThemeMode.dark,
    //     theme: AppTheme.lighTheme,
    //     darkTheme: AppTheme.darkTheme,
    //     home: const RouteButtomNavigation(),
    //     // ? membuat route name
    //     routes: <String, WidgetBuilder>{
    //       '/root': (BuildContext context) => const RouteButtomNavigation(),
    //       '/screenOne': (BuildContext context) => const ScreenOne(),
    //       '/screenTwo': (BuildContext context) => const ScreenTwo(),
    //     });
  }
}
