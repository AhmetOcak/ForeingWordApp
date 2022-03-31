import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';

class AddWordViewModel {
  bool addWord(String? primaryText, String? secondaryText) {
    if (primaryText!.isNotEmpty && secondaryText!.isNotEmpty) {
      UserSimplePreferences.setWordList(primaryText, secondaryText);
      return true;
    }
    return false;
  }
}
