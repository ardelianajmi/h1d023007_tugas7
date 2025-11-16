import 'package:flutter/material.dart';
import '../widgets/gradient_scaffold.dart';
import '../widgets/app_drawer.dart';
import '../auth_strorage.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String? _username;
  @override
  void initState() {
    super.initState();
    AuthStorage.readUsername().then((v) => setState(() => _username = v));
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(title: const Text('About')),
      drawer: AppDrawer(username: _username),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Hai! Selamat datang '
          'Enjoy your time yaw👋🏻',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
