import 'package:flutter/material.dart';

class FixedBackground extends StatelessWidget {
  final String? imageUrl;

  const FixedBackground({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return AnimatedOpacity(
        duration:
            const Duration(milliseconds: 500), // Adjust duration as needed
        opacity: 0.0, // Fade out to transparent
        child: Container(
          color:
              Colors.transparent, // Replace with your default color if needed
        ),
      );
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500), // Adjust duration as needed
      child: Image.asset(
        imageUrl!,
        key: ValueKey<String>(
            imageUrl!), // Ensure unique keys for different images
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
