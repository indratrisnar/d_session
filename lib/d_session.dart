library d_session;

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Driver function to access SharedPreferences\
/// Not Available Key for custom session:\
/// - d_session_user\
/// - d_session_token
class DSession {
  static const _userKey = 'd_session_user';
  static const _tokenKey = 'd_session_token';

  /// get session data\
  /// use for many data, get by key\
  static Future<dynamic> getCustom(String key) async {
    final pref = await SharedPreferences.getInstance();
    String? data = pref.getString(key);
    if (data == null) return null;
    return jsonDecode(data);
  }

  /// save session data\
  /// use for many data, set by key\
  static Future<bool> setCustom(String key, data) async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.setString(key, jsonEncode(data));
    return success;
  }

  /// clear or remove data from session,\
  /// where by key
  static Future<bool> removeCustom(String key) async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.remove(key);
    return success;
  }

  /// get session user\
  static Future<Map?> getUser() async {
    final pref = await SharedPreferences.getInstance();
    String? data = pref.getString(_userKey);
    if (data == null) return null;
    return jsonDecode(data);
  }

  /// save session user\
  static Future<bool> setUser(Map data) async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.setString(_userKey, jsonEncode(data));
    return success;
  }

  /// clear or remove user from session
  static Future<bool> removeUser() async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.remove(_userKey);
    return success;
  }

  /// get session token
  static Future<Map?> getToken() async {
    final pref = await SharedPreferences.getInstance();
    String? data = pref.getString(_tokenKey);
    if (data == null) return null;
    return jsonDecode(data);
  }

  /// save session token
  static Future<bool> setToken(Map data) async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.setString(_tokenKey, jsonEncode(data));
    return success;
  }

  /// clear or remove token from session
  static Future<bool> removeToken() async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.remove(_tokenKey);
    return success;
  }
}
