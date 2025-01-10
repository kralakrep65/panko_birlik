import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:panko_birlik/utils/app_assets.dart';
import 'package:panko_birlik/utils/app_colors.dart';
import 'package:panko_birlik/utils/app_text_styles.dart';
import 'package:panko_birlik/widgets/app_primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 24,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset(AppAssets.backIc),
                  ))
            ],
          ),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Text(
                        "Giriş",
                        style: AppTextStyle.mainTitleStyle
                            .copyWith(color: AppColors.blackColor),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: -MediaQuery.of(context).size.height * .012,
                    child: Image.asset(
                      AppAssets.logo,
                      width: MediaQuery.of(context).size.width * .8,
                      height: MediaQuery.of(context).size.height * .22,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.phoneIc),
                        Text(
                          "Cep Telefonu",
                          style: AppTextStyle.mediumTextStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.grayColor),
                            child: Row(
                              children: [
                                Image.asset(AppAssets.flagTrIc),
                                Text(
                                  " +90 ",
                                  style: AppTextStyle.mediumTextStyle,
                                )
                              ],
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return "Lütfen telefon no giriniz!";
                              }
                            },
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.grayColor,
                                hintText: '(555)-123-45-65',
                                isDense: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Image.asset(AppAssets.passswordIc),
                        Text(
                          "Şifre",
                          style: AppTextStyle.mediumTextStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Lütfen bir şifre giriniz!";
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.grayColor,
                          hintText: 'Şifrenizi girin',
                          isDense: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: TextButton(
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            child: Text(
                              "Göster",
                              style: TextStyle(),
                            ),
                          )),
                      obscureText: isObscure,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Text(
                              "Şifremi Unuttum",
                              style: AppTextStyle.mediumTextStyle
                                  .copyWith(color: AppColors.primaryColor),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    AppPrimaryButton(
                      title: "Giriş Yap",
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {}
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hesabınız yok mu?',
                          style: AppTextStyle.mediumTextStyle,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Kayıt Ol',
                            style: AppTextStyle.mediumTextStyle
                                .copyWith(color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
