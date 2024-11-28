import 'package:flutter/material.dart';
import 'package:pr_6/view/home_page.dart';
import 'package:pr_6/view/splash_page.dart';

import 'package:provider/provider.dart';

import 'controller/planet_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlanetProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => Homescreen(),
      },
    );
  }
}
