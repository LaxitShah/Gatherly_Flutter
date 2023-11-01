import 'package:f1/src/features/authentication/screen/on_boarding/on_boarding_screen.dart';
import 'package:f1/src/features/authentication/screen/splash_screen/splash_screen.dart';
import 'package:f1/src/features/authentication/screen/welcome/welcome_screen.dart';
import 'package:f1/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:AThemeData.lightTheme,
      darkTheme: AThemeData.darkTheme,
      themeMode: ThemeMode.system,
      home:  SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: const Center(
        child: Text("Home Page")),
        );
  }
}