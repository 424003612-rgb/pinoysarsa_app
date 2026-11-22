import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

// HOW TO PREVIEW EACH SCREEN (no navigation needed):
//   1 = Login screen
//   2 = Home screen
// Change this number, save (Ctrl+S), and the screen updates.
const int previewScreen = 1;

void main() {
  runApp(const PinoySarsaApp());
}

class PinoySarsaApp extends StatelessWidget {
  const PinoySarsaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PinoySarsa',
      theme: buildAppTheme(), // shared ThemeData for both screens
      home: previewScreen == 1 ? const LoginScreen() : const HomeScreen(),
    );
  }
}