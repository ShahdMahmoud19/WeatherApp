import 'package:flutter/material.dart';
import 'package:weather_app/features/Home/home_screen.dart';
import 'package:weather_app/features/OnBoarding/on_boarding.dart';
import 'package:weather_app/features/Search/search_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home':(context)=>HomeScreen(),
        '/search':(context)=>SearchScreen()
      },
      home: OnBoarding(),
    );
  }
}