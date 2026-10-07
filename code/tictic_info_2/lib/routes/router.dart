import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/welcome_screen.dart';

Map<String, WidgetBuilder> router = {
  '/' : (BuildContext context) => WelcomeScreen(),
  '/login' : (BuildContext context) => LoginScreen(),
  '/register' : (BuildContext context) => RegisterScreen(),
  '/home' : (BuildContext context) => HomeScreen(),
};