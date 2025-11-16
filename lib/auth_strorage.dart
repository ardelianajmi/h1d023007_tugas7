import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  static const _keyUsername = 'username';

  static Future<void> saveUsername(String username) async {
    final p = await SharedPreferences.getInstance();
    await p.setString(_keyUsername, username);
  }

  static Future<String?> readUsername() async {
    final p = await SharedPreferences.getInstance();
    return p.getString(_keyUsername);
  }

  static Future<void> logout() async {
    final p = await SharedPreferences.getInstance();
    await p.remove(_keyUsername);
  }
}
