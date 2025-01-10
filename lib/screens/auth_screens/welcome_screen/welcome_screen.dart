import 'package:flutter/material.dart';
import 'package:panko_birlik/screens/auth_screens/login_screen/Login_screen.dart';
import 'package:panko_birlik/utils/app_colors.dart';
import 'package:panko_birlik/utils/app_text_styles.dart';
import 'package:panko_birlik/widgets/app_primary_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/welcome_bg.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Image.asset(
                "assets/img/logo.png",
                width: MediaQuery.of(context).size.width * .8,
              ),
              Expanded(flex: 3, child: Container()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: AppPrimaryButton(
                  title: 'Giriş Yap',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hesabınız yok mu?',
                    style: AppTextStyle.mainTitleStyle
                        .copyWith(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Kayıt Ol',
                      style: AppTextStyle.mainTitleStyle
                          .copyWith(color: AppColors.primaryLightColor),
                    ),
                  )
                ],
              ),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
