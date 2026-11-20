import 'package:flutter/material.dart';

import '../modules/auth/screens/login_page.dart';
import '../modules/auth/screens/register_page.dart';
import '../modules/garden/screens/care_log_page.dart';
import '../modules/reviews/screens/reviews_page.dart';

class AppRoutes {
  AppRoutes._();

  static const String login = '/login';
  static const String register = '/register';
  static const String careLog = '/care-log';
  static const String reviews = '/reviews';

  static Map<String, WidgetBuilder> get routes => {
    login: (_) => const LoginPage(),
    register: (_) => const RegisterPage(),
    careLog: (_) => const CareLogPage(),
    reviews: (_) => const ReviewsPage(),
  };
}
