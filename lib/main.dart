import 'package:burger_bun_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'themes/themes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger App',
      home: HomePage(),
      theme: personaliteTheme,
    );
  }
}
