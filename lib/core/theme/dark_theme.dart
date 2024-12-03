import 'package:flutter/material.dart';
import 'package:space/core/util/custom_colors.dart';

ThemeData mytheme() {
  return ThemeData(
      scaffoldBackgroundColor: CustomColors.black,
      primaryColor: CustomColors.black,
      appBarTheme: AppBarTheme(
        //foregroundColor: CustomColors.white,
      //backgroundColor: CustomColors.transperant,
       // centerTitle: true,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, color: CustomColors.white,fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16, color: CustomColors.white),
          titleMedium: TextStyle(
              fontSize: 18,
              color: CustomColors.white,
              fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: CustomColors.white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: CustomColors.white,
            backgroundColor: CustomColors.red,
            padding: const EdgeInsets.all(16),
            elevation: 0,
            textStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              backgroundColor: CustomColors.red,
              foregroundColor: CustomColors.white,
              iconSize: 22)));
}
