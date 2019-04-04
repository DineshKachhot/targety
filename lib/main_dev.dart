import 'package:flutter/material.dart';
import 'package:targety/config/app_config.dart';
import 'package:targety/home.dart';

void main() {
  AppConfig().setAppConfig(
    appEnvironment: AppEnvironment.DEV,
    appName: 'Targety Dev',
    description: 'This is a Development version of Targety',
    baseUrl: 'https://dev-appname.com/api',
    themeData: ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Colors.blueGrey,
    )
  );
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig().appName,
      theme: AppConfig().themeData,
      home: MyHomePage(title: AppConfig().appName),
    );
  }
}


