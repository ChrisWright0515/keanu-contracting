import 'package:flutter/material.dart';

class FullScreenSection extends StatelessWidget {
  final Widget child;
  const FullScreenSection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: child,
    );
  }
}
