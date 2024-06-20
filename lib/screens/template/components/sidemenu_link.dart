import 'package:flutter/material.dart';

class SideMenuLink extends StatelessWidget {
  final bool isUserSignedIn; // Determines which links to show
  final IconData icon;
  final String text;

  const SideMenuLink(
      {super.key,
      required this.isUserSignedIn,
      required this.icon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        // Handle navigation
      },
    );
  }
}
