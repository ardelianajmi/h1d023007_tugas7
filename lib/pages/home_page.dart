import 'package:flutter/material.dart';
import '../widgets/gradient_scaffold.dart';
import '../widgets/app_drawer.dart';
import '../auth_strorage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _username;

  @override
  void initState() {
    super.initState();
    AuthStorage.readUsername().then((name) => setState(() => _username = name));
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: AppDrawer(username: _username),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halo, ${_username ?? 'User'}!',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            const Text('Ini beranda dengan minimnya kehidupan.'),
          ],
        ),
      ),
    );
  }
}
