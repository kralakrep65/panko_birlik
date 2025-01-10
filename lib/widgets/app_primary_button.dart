import 'package:flutter/material.dart';
import 'package:panko_birlik/utils/app_text_styles.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .05,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF28663F),
            Color(0xFF36A35E),
            Color(0xFF28663F),
            Color(0xFF36A35E),
            Color(0xFF2C6340)
          ],
          stops: [0.0, 0.25, 0.5, 0.75, 1.0],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          title,
          style: AppTextStyle.mainTitleStyle
              .copyWith(color: Colors.white, fontSize: 24),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
