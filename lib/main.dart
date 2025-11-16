import 'package:flutter/material.dart';
import 'app_routes.dart';

void main() => runApp(const H1D023007Tugas7App());

class H1D023007Tugas7App extends StatelessWidget {
  const H1D023007Tugas7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H1D023007_Tugas7',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF7F3DFF), // seed ungu (komponen tombol, dsb.)
      ),
      initialRoute: AppRoutes.home,        // akan di-guard jika belum login
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
