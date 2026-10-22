import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MaGarderieApp());
}

class MaGarderieApp extends StatelessWidget {
  const MaGarderieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma Garderie',                 // Nom affiché par l'OS
      debugShowCheckedModeBanner: false,    // Retire le bandeau "DEBUG"
      theme: ThemeData(
        primarySwatch: Colors.orange,       // Thème principal
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,    // Icônes et titre en blanc
          elevation: 2,
        ),
      ),
      // Écran affiché au lancement : le Splash Screen.
      // (Il enchaînera tout seul sur HomePage après 3 s.)
      home: const SplashScreen(),
    );
  }
}