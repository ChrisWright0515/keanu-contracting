import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'screens/welcome/welcome_screen.dart';
import 'theme/theme_provider.dart';

void main() async {
  // initialize firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    print('Firebase initialized successfully');
  }).catchError((error) {
    print('Failed to initialize Firebase: $error');
  });

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Keanu\'s Contracting',
          theme: themeProvider.themeData,
          initialRoute: '/',
          routes: {
            '/': (context) => const WelcomeScreen(),
          },
        );
      },
    );
  }
}
