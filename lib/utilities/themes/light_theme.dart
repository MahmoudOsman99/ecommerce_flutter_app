import 'package:flutter/material.dart';

ThemeData LightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xffe5e5e5),
    primaryColor: Colors.red,
    textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 20,
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
        )),
    // ignore: prefer_const_constructors
    // inputDecorationTheme: InputDecorationTheme(
    // border: InputBorder.none,
    // errorBorder: OutlineInputBorder(
    // borderSide: BorderSide(
    //     color: Colors.red.shade700,
    //   ),
    //   borderRadius: BorderRadius.circular(10),
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderSide: BorderSide(
    //     color: Colors.red.shade700,
    //   ),
    //   borderRadius: BorderRadius.circular(10),
    // ),
    // ),
  );
}
