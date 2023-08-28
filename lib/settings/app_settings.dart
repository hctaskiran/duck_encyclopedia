import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';


class AppSettings with ChangeNotifier {
  late SharedPreferences _sharedPrefObject;
  Future<void> createSharedPrefObject() async {
    _sharedPrefObject = await SharedPreferences.getInstance();
  }
//? GifCheck
  bool _gifCheck = true;
  bool get isGif => _gifCheck;
  void toggleGif() {
    _gifCheck = !_gifCheck;
    saveGifSetting(_gifCheck);
    notifyListeners();
  }

  void saveGifSetting(bool value) {
    _sharedPrefObject.setBool('gifValue', value);
  }

  void loadGifSetting() async {
    await createSharedPrefObject();
    notifyListeners();
    _sharedPrefObject.getBool('gifValue') == null
        ? _gifCheck = true
        : _gifCheck = _sharedPrefObject.getBool('gifValue')!;
  }}