import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.title, required this.name});
  final String title;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
        ),
        ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, name);
            },
            child: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            ))
      ],
    );
  }
}
