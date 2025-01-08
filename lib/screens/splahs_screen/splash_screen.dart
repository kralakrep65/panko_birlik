import 'package:flutter/material.dart';
import 'package:panko_birlik/utils/app_colors.dart';
import 'package:panko_birlik/utils/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/app_logo.png",
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "ANKARA PANCAR KOOPERATİFİ \n1962",
              style: AppTextStyle.mainTitleStyle.copyWith(height: 1.1),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
