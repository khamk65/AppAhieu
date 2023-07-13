import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/spacing.dart';
import 'package:flutter_application_1/witgets/auth_button.dart';
import 'package:flutter_application_1/witgets/auth_title.dart';

import '../themes/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          Column(
            children: [
              Spacing.h144,
              Container(
                child: const AuthTitle(
                  title: 'Hello',
                  subTitle: 'Sign in to your account',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildBackground() {
  return Container(
    color: AppColors.background,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: double.infinity,
          // height: double.maxFinite,
          // decoration: const BoxDecoration(color: AppColors.background),
          child: Image.asset(
            'assets/images/loginbg1.png',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
            width: double.maxFinite,
            // decoration: const BoxDecoration(color: AppColors.background),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'assets/images/loginbg2.png',
                fit: BoxFit.contain,
              ),
            ))
      ],
    ),
  );
}
