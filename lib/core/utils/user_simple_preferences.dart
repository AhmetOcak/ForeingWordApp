
import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static late SharedPreferences _preferences;
  static const _key = "wordlist";
  static final List<String>? _wordList = getWordList() ?? [];
  
  static Future init() async =>
    _preferences = await SharedPreferences.getInstance();

  static Future setWordList(String primaryWord, String secondaryWord) async {
    _wordList!.add(primaryWord);
    _wordList!.add(secondaryWord);
    _preferences.setStringList(_key, _wordList!);
  }

  static Future deleteWordFromList(int primaryWordIndex, int secondaryWordIndex) async {
    _wordList!.removeAt(primaryWordIndex);
    _wordList!.removeAt(secondaryWordIndex - 1);
    _preferences.setStringList(_key, _wordList!);
  }

  static List<String>? getWordList() => _preferences.getStringList(_key);

}