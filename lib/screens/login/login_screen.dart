import 'package:flutter/material.dart';

import '../template/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/signin_balls.png'),
                Text(
                  'Login Screen',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
