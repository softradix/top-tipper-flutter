import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{

  readString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  readObject(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key));
  }

  saveObject(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }


  removeValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  removeAll() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}