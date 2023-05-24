import 'package:flutter/material.dart';
import 'package:hyper_test/view/core/app_constants.dart';
import 'package:hyper_test/view/core/app_theme.dart';
import 'package:hyper_test/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.light(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
