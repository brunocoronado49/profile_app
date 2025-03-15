import 'package:flutter/material.dart';
import 'package:profile_app/config/config.dart';
import 'package:profile_app/features/profile/presentation/screens/screens.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: ProfileScreen(),
    );
  }
}

