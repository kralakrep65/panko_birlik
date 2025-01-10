import 'package:flutter/material.dart';
import 'package:panko_birlik/screens/auth_screens/welcome_screen/welcome_screen.dart';
import 'package:panko_birlik/screens/splahs_screen/splash_screen.dart';
import 'package:panko_birlik/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PANKO',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        home: WelcomeScreen());
  }
}
