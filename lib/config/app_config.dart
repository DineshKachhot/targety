import 'package:flutter/material.dart';

enum AppEnvironment {DEV, STAGE, PROD}

class AppConfig {
  // Singleton object
  static final AppConfig _singleton =
      new AppConfig._internal();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._internal();

  AppEnvironment appEnvironment;
  String appName;
  String description;
  String baseUrl;
  ThemeData themeData;

  // Set app configuration with single function
  void setAppConfig({AppEnvironment appEnvironment, String appName, String description, String baseUrl, ThemeData themeData}) {
    this.appEnvironment   = appEnvironment;
    this.appName          = appName;
    this.description      = description;
    this.baseUrl          = baseUrl;
    this.themeData        = themeData;
  }
}