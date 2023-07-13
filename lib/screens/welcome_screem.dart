import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/spacing.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Image.asset('assets/images/imagewelcome.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 276,
              ),
              Center(
                  child: Column(
                children: [
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Verdana',
                        fontWeight: FontWeight.w700),
                  ),
                  Spacing.h28,
                  const Text(
                    'Smart Home',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'Lucida Fax',
                      color: AppColors.primary500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Let’s manage your smart home",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        fontWeight: FontWeight.w500),
                  ),
                  Spacing.h380,
                  Container(
                    width: 354,
                    height: 70,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(40)),
                    // color: AppColors.background,

                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('GET SMART',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Verdana',
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Image.asset('assets/images/backgroundwelcome.png'));
  }
}
