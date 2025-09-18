import 'package:flutter/material.dart';
import '../theme.dart';
import 'home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/onboarding.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 24),
              const Text('Welcome to Eatsy! 👋',
                style: TextStyle(color: coral, fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Unlock a world of culinary delights, right at your fingertips',
                textAlign: TextAlign.center),
              const SizedBox(height: 24),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: coral),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const HomePage()),
                  );
                },
                child: const Text('GET STARTED'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
