import 'package:flutter/material.dart';
import 'package:notely/config/theme/theme_manager.dart';
import 'package:notely/features/notes/presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notely',
      theme: ThemeManger.defaultTheme(),
      home: const HomeScreen(),
    );
  }
}
