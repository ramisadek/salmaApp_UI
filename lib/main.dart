import 'package:flutter/material.dart';
import 'package:flutter_demo/playlist_screen.dart';

import 'package:flutter_demo/salmaTheme.dart';
import 'package:flutter_demo/sign-up_screen.dart';
import 'package:flutter_demo/sleep_screen.dart';

import 'forgetPassword_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'main_screen.dart';
import 'meditate_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: SalmaTheme().mainTheme,
      home: PlaylistScreen(),
    );
  }
}