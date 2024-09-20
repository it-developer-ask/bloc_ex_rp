import 'package:bloc_ex/repositories/repositories.dart';
import 'presentation/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Repositories.initialize();
  runApp(const BlocEx());
}

class BlocEx extends StatelessWidget {
  const BlocEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlocEx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const LandingScreen(),
    );
  }
}
