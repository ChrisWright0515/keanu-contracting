import 'package:flutter/material.dart';

class SideMenuHeader extends StatelessWidget {
  final String? userName; // Nullable, if no user is signed in, it's null
  final String companyName = "Keanu's Contracting";
  final String logoAssetPath =
      'assets/images/signin_balls.png'; // Path to the logo asset

  const SideMenuHeader({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 10,
              ),
              Text(
                companyName,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (userName != null)
                Text(
                  userName!,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
