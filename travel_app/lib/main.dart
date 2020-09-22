import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'screens/Authentication/SignIn_Page.dart';
import 'screens/Content/ClassesData.dart';
import 'screens/Content/result.dart';
//import 'screens/Authentication/RegisterPage.dart';
//import  'package:flutter/services.dart' ;
//import 'package:device_preview/device_preview.dart';
//import 'screens/Content/TransportCard.dart';
import 'screens/Content/TransportPanel.dart';
import 'screens/Content/BlogCard.dart' ;
import 'screens/Content/Carousel.dart';
import 'screens/Content/testingpanel.dart';
import 'screens/Content/Tshirt.dart';
void main() {
  setupLocator();
  runApp(
 MyApp(),
  );

}
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
    
    return ChangeNotifierProvider<ProviderDivision>(
      create: (context) => ProviderDivision(),
          child: MaterialApp(

       initialRoute: '/home',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomeMap(),
          '/result': (BuildContext context) => new ResultPage(),
          // '/signin': (BuildContext context) => new SignInPage(),
          // '/register': (BuildContext context) => new RegisterPage(),
           '/transport': (BuildContext context) => new Transport(),
           '/blogs': (BuildContext context) => new CarouselDemo(),
           '/Tshirt': (BuildContext context) => new Tshirt(),


        },
      ),
    );
  }
}
