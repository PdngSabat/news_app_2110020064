import 'package:flutter/material.dart';
import 'package:news_app_2110020064/components/customListTile.dart';
import 'package:news_app_2110020064/model/article_model.dart';
import 'package:news_app_2110020064/services/api_service.dart';
import 'package:news_app_2110020064/tampilan/homepage.dart';
import 'package:news_app_2110020064/tampilan/splash_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
