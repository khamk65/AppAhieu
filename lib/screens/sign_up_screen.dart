import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/spacing.dart';
import 'package:flutter_application_1/witgets/auth_button.dart';

import '../themes/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          Column(
            children: [
              Spacing.h144,
              AuthButton(title: 'Create', name: '/login')
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
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/signupbg1.png'),
            )),
        SizedBox(
            width: double.maxFinite,
            // decoration: const BoxDecoration(color: AppColors.background),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'assets/images/signupbg2.png',
                fit: BoxFit.contain,
              ),
            ))
      ],
    ),
  );
}
