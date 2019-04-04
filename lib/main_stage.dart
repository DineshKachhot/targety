import 'package:flutter/material.dart';
import 'package:targety/config/app_config.dart';
import 'package:targety/home.dart';

void main() {
  AppConfig().setAppConfig(
    appEnvironment: AppEnvironment.PROD,
    appName: 'Targety Stage',
    description: 'This is a Staging version of Targety',
    baseUrl: 'https://stage-appname.com/api',
    themeData: ThemeData(
      primarySwatch: Colors.purple,
      primaryColor: Colors.deepPurple,
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
