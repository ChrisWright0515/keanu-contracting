import 'package:flutter/material.dart';

import '../../components/theme_toggle.dart';
import '../../constants.dart';
import 'components/sidemenu_link.dart';

class SideMenu extends StatelessWidget {
  final bool isUserSignedIn;
  final String? userName;

  const SideMenu({
    super.key,
    required this.isUserSignedIn,
    this.userName,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> links = isUserSignedIn
        ? [
            {'icon': Icons.home, 'text': 'Home'},
            {'icon': Icons.build, 'text': 'Services'},
            {'icon': Icons.photo, 'text': 'Gallery'},
            {'icon': Icons.schedule, 'text': 'Schedule'},
            {'icon': Icons.chat, 'text': 'Chat'},
            {'icon': Icons.logout, 'text': 'Sign out'},
          ]
        : [
            {'icon': Icons.home, 'text': 'Home'},
            {'icon': Icons.build, 'text': 'Services'},
            {'icon': Icons.photo, 'text': 'Gallery'},
            {'icon': Icons.login, 'text': 'Sign in/Sign up'},
          ];

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      child: SafeArea(
        child: Column(
          children: [
            const DrawerHeader(child: Icon(Icons.favorite)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...links
                      .map((link) => SideMenuLink(
                            isUserSignedIn: isUserSignedIn,
                            icon: link['icon'],
                            text: link['text'],
                          ))
                      .toList(),
                  const Divider(),
                  const SizedBox(height: defaultPadding / 2),
                  const ThemeToggle(
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
