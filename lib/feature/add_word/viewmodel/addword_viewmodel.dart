class AddWordViewModel {
  bool checkTextField(String? text) {
    if (text!.isNotEmpty) {
      return true;
    }
    return false;
  }
}
