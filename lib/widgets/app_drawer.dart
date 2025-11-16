import 'package:flutter/material.dart';
import '../app_routes.dart';
import '../auth_strorage.dart';

class AppDrawer extends StatelessWidget {
  final String? username;
  const AppDrawer({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF7F3DFF), Color(0xFFFF62A5)],
              ),
            ),
            accountName: Text(username ?? 'Tamu'),
            accountEmail: const Text('H1D023007_Tugas7@unsoed.ac.id'),
            currentAccountPicture: const CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, AppRoutes.home),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, AppRoutes.about),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, AppRoutes.profile),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () async {
              await AuthStorage.logout();
              // hapus semua route lalu ke login
              // gunakan pushNamedAndRemoveUntil agar tidak bisa back
              // ke halaman yang butuh login.
              // ignore: use_build_context_synchronously
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.login,
                (_) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
