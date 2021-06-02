import 'package:shared_preferences/shared_preferences.dart';

class SessionManager{
  //set data into shared preferences like this
  Future<void> setString(String key,String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

//get value from shared preferences
  Future<String> getString(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String value;
    value = pref.getString(key) ?? "";
    return value;
  }
  Future<void> clearAll() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}