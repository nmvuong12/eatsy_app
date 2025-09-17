import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EatsyApp());
}

class EatsyApp extends StatelessWidget {
  const EatsyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
