import 'package:flutter/material.dart';
import 'package:space/Screens/home.dart';
import 'package:space/Screens/login.dart';
import 'package:space/core/theme/dark_theme.dart';

void main() {
  runApp(const MyApp ());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: mytheme(),
    home:  Login(),
  );
  }

}
