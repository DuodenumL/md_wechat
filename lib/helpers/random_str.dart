import 'dart:math';

class RandomString {
  static get(int length) {
    var alphabet =
        "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ+=";
    var result = "";
    for (int i = 0; i < length; i++) {
      result += alphabet[Random().nextInt(alphabet.length)];
    }
    return result;
  }
}
