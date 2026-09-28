import 'package:flutter/material.dart';
import 'package:tictic_info_2/screens/login_screen.dart';
import 'package:tictic_info_2/screens/register_screen.dart';
import 'package:tictic_info_2/screens/welcome_screen.dart';

Map<String, WidgetBuilder> router = {
  '/' : (BuildContext context) => WelcomeScreen(),
  '/login' : (BuildContext context) => LoginScreen(),
  '/register' : (BuildContext context) => RegisterScreen(),
};