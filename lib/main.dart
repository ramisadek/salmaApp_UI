import 'package:flutter/material.dart';

import 'package:flutter_demo/salmaTheme.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: SalmaTheme().mainTheme,
      home: HomeScreen(),
    );
  }
}