import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/profile_page.dart';
import 'auth_strorage.dart';

class AppRoutes {
  static const login   = '/login';
  static const home    = '/home';
  static const about   = '/about';
  static const profile = '/profile';

  static final _protected = {home, about, profile};

  static Route<dynamic> onGenerateRoute(RouteSettings s) {
    Widget page;
    switch (s.name) {
      case login:   page = const LoginPage(); break;
      case about:   page = const AboutPage(); break;
      case profile: page = const ProfilePage(); break;
      case home:
      default:      page = const HomePage();
    }

    // AuthGuard: kalau route protected & belum login -> arahkan ke login
    return PageRouteBuilder(
      settings: s,
      pageBuilder: (_, __, ___) => FutureBuilder(
        future: AuthStorage.readUsername(),
        builder: (ctx, snap) {
          final loggedIn = (snap.data ?? '').isNotEmpty;
          final name = s.name ?? home;
          if (!loggedIn && _protected.contains(name)) {
            return const LoginPage();
          }
          return page;
        },
      ),
      transitionsBuilder: (_, anim, __, child) {
        final tween = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero);
        return SlideTransition(position: tween.animate(anim), child: child);
      },
    );
  }
}
