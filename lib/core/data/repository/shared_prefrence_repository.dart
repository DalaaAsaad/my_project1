import 'dart:convert';
import 'package:e_commerce/core/data/models/taken_info.dart';
import 'package:e_commerce/main.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum dataType {
  STRING,
  INT,
  BOOL,
  DOUBLE,
  LISTSTRING,
}

class SharedPrfrenceRepository {
  SharedPreferences pref = prefs;
  String PREF_FIRST_LUNCH = 'first_lunch';
  String PREF_LOGGED_IN = 'logged_in';
  String PREF_LOGIN_INFO = 'login_info';
  String PREF_TAKEN_INFO = 'taken_info';
  String PREF_APP_LANG = 'app_language';

  void setFirstLunch(bool value) {
    setPrefrence(type: dataType.BOOL, key: PREF_FIRST_LUNCH, value: value);
  }

  void setLoggedIn(bool value) {
    setPrefrence(type: dataType.BOOL, key: PREF_LOGGED_IN, value: value);
  }

  void setLoggedInfo(List<String> value) {
    setPrefrence(type: dataType.LISTSTRING, key: PREF_LOGIN_INFO, value: value);
  }

  void setTakenInfo(takenInfo value) {
    setPrefrence(
        type: dataType.LISTSTRING,
        key: PREF_LOGIN_INFO,
        value: jsonEncode(value.toJson()));
  }

  void setAppLnaguage(String code) {
    setPrefrence(type: dataType.STRING, key: PREF_APP_LANG, value: code);
  }

  bool getFirstLunch() {
    if (pref.containsKey(PREF_FIRST_LUNCH)) {
      return getPrefrnce(PREF_FIRST_LUNCH);
    } else
      return true;
  }

  bool getLoggedIn() {
    if (pref.containsKey(PREF_LOGGED_IN)) {
      return getPrefrnce(PREF_LOGGED_IN);
    } else
      return false;
  }

  List<String> getLoggedInfo() {
    if (pref.containsKey(PREF_LOGIN_INFO)) {
      List<Object?> result = getPrefrnce(PREF_LOGIN_INFO);
      List<String> info = [];
      result.forEach((element) {
        info.add(element.toString());
      });
      return info;
    } else
      return [];
  }

  takenInfo getTakenInfo() {
    return takenInfo.fromJson(jsonDecode(getPrefrnce(PREF_TAKEN_INFO)));
  }

  String getAppLanguge() {
    if (pref.containsKey(PREF_APP_LANG)) {
      return getPrefrnce(PREF_APP_LANG);
    } else {
      return 'en';
    }
  }

  setPrefrence(
      {required String key,
      required dataType type,
      required dynamic value}) async {
    switch (type) {
      case dataType.STRING:
        await prefs.setString(key, value);
        break;
      case dataType.INT:
        await prefs.setInt(key, value);
        break;
      case dataType.BOOL:
        await prefs.setBool(key, value);
        break;
      case dataType.DOUBLE:
        await prefs.setDouble(key, value);
        break;
      case dataType.LISTSTRING:
        await prefs.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrnce(String key) {
    return pref.get(key);
  }
}
