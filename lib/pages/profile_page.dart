import 'package:flutter/material.dart';
import '../widgets/gradient_scaffold.dart';
import '../widgets/app_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const AppDrawer(username: "H1D023007"),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar bulat
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB721FF), // ungu
                    Color(0xFFFF6EC7), // pink
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Nama
            const Text(
              "H1D023007",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

          ],
        ),
      ),
    );
  }
}
