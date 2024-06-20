import 'package:flutter/material.dart';

import '../template/components/hero_section.dart';
import '../template/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HeroSection(),
        // ServicesSection(),
      ],
    );
  }
}
