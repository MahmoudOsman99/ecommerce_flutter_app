import 'package:ecommerce_app/utilities/routes.dart';
import 'package:ecommerce_app/views/screens/auth_screen.dart';
import 'package:ecommerce_app/views/screens/bottom-nav-bar-screen.dart';
import 'package:ecommerce_app/views/screens/home_screen.dart';
import 'package:ecommerce_app/views/screens/landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRouts.registerScreenRoute:
      return CupertinoPageRoute(builder: (context) => const AuthPageScreen());

    case AppRouts.bottomNavbarScreenRoute:
      return CupertinoPageRoute(builder: (context) => BottomNavbarScreen());

    case AppRouts.loginScreenRoute:
      return CupertinoPageRoute(builder: (context) => const AuthPageScreen());

    case AppRouts.homeScreenRoute:
      return CupertinoPageRoute(builder: (context) => const HomeScreen());

    case AppRouts.landingScreenRoute:
    default:
      return MaterialPageRoute(builder: (context) => const LandingPageScreen());
  }
}
