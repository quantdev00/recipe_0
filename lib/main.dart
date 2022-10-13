import 'package:flutter/material.dart';
import 'package:recipe_0/screens/main_view.dart';
import 'package:recipe_0/utilities/app_styling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Testing',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const MainView(),
    );
  }
}
