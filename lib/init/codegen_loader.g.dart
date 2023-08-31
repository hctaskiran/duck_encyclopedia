// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> tr_TR = {
  "hiText": "Merhaba, Ördekcıs",
  "aboutApp": "Ördekler hakkında daha fazlasını öğrenelim!",
  "subAboutApp": "Uygulama Hakkında:",
  "appGoal": "Bu uygulamanın amacı nedir?",
  "subAppGoal": "Uygulamanın amacını neymiş bakalım.",
  "whyText": "Böyle bir uygulama neden var?",
  "subWhyText": "İşte size 13 sebep!",
  "inspText": "İlham kaynağım...",
  "subInspText": "Uygulamanın çeşitli yerlerinde bu ilham kaynağını görebilirsiniz.",
  "appName": "Ördek Ansiklopedi",
  "bottomNavigationBar": {
    "realHomePage": "Anasayfa",
    "encyclopediaPage": "Ansiklopedi",
    "settingsPage": {
      "settings": "Ayarlar",
      "languages": "Dil Seçenekleri",
      "special": "Özel Ayar",
      "sureText": "Bu tuşu aktif etmek istediğine emin misin?"
    }
  }
};
static const Map<String,dynamic> ru_RU = {
  "hiText": "Приветик, Ördekcıs",
  "aboutApp": "Давай узнаем больше об утках!",
  "subAboutApp": "Про Приложение:",
  "appGoal": "Зачем такое приложение?",
  "subAppGoal": "Давай-ка узнаем причину =)",
  "whyText": "Почему существует?",
  "subWhyText": "Вам 13 причин на этот вопрос!",
  "inspText": "Моё вдохновение...",
  "subInspText": "В некоторых вкладках приложения такое вдохновение отображается.",
  "appName": "Утиная Анциклопедия",
  "bottomNavigationBar": {
    "realHomePage": "Главное",
    "encyclopediaPage": "Анциклопедия",
    "settingsPage": {
      "settings": "Настройки",
      "languages": "Языки",
      "special": "Специальная Кнопка",
      "sureText": "Уверен, что хочешь включить эту кнопку?"
    }
  }
};
static const Map<String,dynamic> en_US = {
  "hiText": "Hi, Ördekcıs",
  "aboutApp": "Time to learn much about ducks!",
  "subAboutApp": "About the App:",
  "appGoal": "What is this for?",
  "subAppGoal": "Learn the main point of the application.",
  "whyText": "Why does it exists?",
  "subWhyText": "13 reasons why it does!",
  "inspText": "My inspiration...",
  "subInspText": "You can see this inspiration almost everywhere in this app.",
  "appName": "Duck Encyclopedia",
  "bottomNavigationBar": {
    "realHomePage": "Home",
    "encyclopediaPage": "Encyclopedia",
    "settingsPage": {
      "settings": "Settings",
      "languages": "Languages",
      "special": "Special Button",
      "sureText": "Are you really sure that you want to switch this button?"
    }
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"tr_TR": tr_TR, "ru_RU": ru_RU, "en_US": en_US};
}
