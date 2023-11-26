// ignore_for_file: constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class AsiftPreferences {
  static const String TOKEN = 'token';
  static const String REFRESH_TOKEN = 'refresh_token';
  static const String USERNAME = 'username';

  Future<bool> addToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(TOKEN, token);
  }

  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(TOKEN) ?? '';
  }

  Future<bool> addRefreshToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(REFRESH_TOKEN, token);
  }

  Future<String> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(REFRESH_TOKEN) ?? '';
  }

  Future<bool> addUsername(String name) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(USERNAME, name);
  }

  Future<String> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(USERNAME) ?? '';
  }
}
