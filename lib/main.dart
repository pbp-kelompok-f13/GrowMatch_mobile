import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

import 'config/routes.dart';
import 'config/theme.dart';
import 'widgets/app_shell.dart';

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
        home: const AppShell(),
        routes: AppRoutes.routes,
      ),
    );
  }
}
