import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/Services/news_service.dart';
import 'package:news_application/views/home_view.dart';
import 'package:news_application/views/login_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()
        //  HomeView(),
        );
  }
}
