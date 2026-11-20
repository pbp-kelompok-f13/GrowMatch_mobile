import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

import 'config/theme.dart';

void main() {
  runApp(const GrowMatchApp());
}

class GrowMatchApp extends StatelessWidget {
  const GrowMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<CookieRequest>(
      create: (_) => CookieRequest(),
      child: MaterialApp(
        title: 'GrowMatch',
        debugShowCheckedModeBanner: false,
        theme: GrowMatchTheme.light,
        home: const _GrowMatchBootstrapPage(),
      ),
    );
  }
}

class _GrowMatchBootstrapPage extends StatelessWidget {
  const _GrowMatchBootstrapPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GrowMatch')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 64,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              const Text(
                'GrowMatch Mobile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Find plants that fit your space, lifestyle, and growing journey.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
