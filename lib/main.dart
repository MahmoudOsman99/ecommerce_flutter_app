import 'package:ecommerce_app/utilities/router.dart';
import 'package:ecommerce_app/utilities/routes.dart';
import 'package:ecommerce_app/utilities/themes/light_theme.dart';
import 'package:ecommerce_app/views/screens/new_widget.dart';
// import 'package:ecommerce_app/views/screens/landing_page_screen.dart';
import 'package:flutter/material.dart';

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
      theme: LightTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerate,
      initialRoute: AppRouts.bottomNavbarScreenRoute,
      // home: NewWidget(),
    );
  }
}
