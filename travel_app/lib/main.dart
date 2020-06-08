import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'screens/Authentication/SignIn_Page.dart';
import 'screens/Content/homePageMap.dart';
import 'screens/Authentication/RegisterPage.dart';
//import  'package:flutter/services.dart' ;
import 'package:device_preview/device_preview.dart';

import 'screens/Content/testingpanel.dart';
void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class Constants {
  static const String Subscribe = 'Subscribe';
  static const String Settings = 'Settings';
  static const String SignOut = 'Sign out';

  static const List<String> choices = [Subscribe, Settings, SignOut];
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
     
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new HomeMap(),
        '/home': (BuildContext context) => new HomePageMap(),
        '/signin': (BuildContext context) => new SignInPage(),
        '/register': (BuildContext context) => new RegisterPage(),

      },
    );
  }
}
