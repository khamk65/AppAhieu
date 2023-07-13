import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/app_colors.dart';
import 'package:flutter_application_1/themes/spacing.dart';
import 'package:flutter_application_1/themes/text_styles.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyles.t64Lato.copyWith(color: AppColors.textLoginSignUp),
          textAlign: TextAlign.center,
        ),
        Spacing.h19,
        Text(
          subTitle,
          style: TextStyles.t18Lato.copyWith(color: AppColors.textLoginSignUp),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
