import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';

class ThemeToggle extends StatefulWidget {
  final width;
  final height;
  const ThemeToggle({Key? key, this.width, this.height}) : super(key: key);

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  LottieComposition? _composition;
  int _lightStart = 1;
  int _darkStart = 185;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Default animation duration
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _animateBetweenFrames(int startFrame, int endFrame, Duration duration) {
    if (_composition == null) return;

    final double startProgress = startFrame / _composition!.endFrame;
    final double endProgress = endFrame / _composition!.endFrame;

    _controller.duration = duration;
    _controller.value = startProgress;
    _controller.animateTo(endProgress);
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      width: widget.width, // specify your desired width
      height: widget.height, // specify your desired height
      child: GestureDetector(
        onTap: () {
          themeProvider.toggleTheme();

          if (_composition != null) {
            if (themeProvider.isDarkTheme()) {
              _animateBetweenFrames(_lightStart, _darkStart,
                  const Duration(seconds: 2)); // Dark theme animation
            } else {
              _animateBetweenFrames(_darkStart, _lightStart,
                  const Duration(seconds: 1)); // Light theme animation
            }
          }
        },
        child: Lottie.asset(
          'assets/animations/toggle_theme_animation.json',
          controller: _controller,
          onLoaded: (composition) {
            setState(() {
              _composition = composition;
              // Set the initial frame based on the current theme
              if (themeProvider.isDarkTheme()) {
                _controller.value =
                    _darkStart / _composition!.endFrame; // Dark theme animation
              } else {
                _controller.value = _lightStart /
                    _composition!.endFrame; // Light theme animation
              }
            });
          },
        ),
      ),
    );
  }
}
