import 'package:hive/hive.dart';

const _languageCodeKey = 'code';

class LanguageDatabase {
  late Box _languageBox;//Box pour stocker les donnés

  Future<void> init() async {
    _languageBox = await Hive.openBox('language');//initialise la base de données des langues. Elle ouvre une boîte Hive avec le nom "language".
  }

  void saveLanguage(String languageCode) { //prend un code de langue en paramètre et le sauvegarde dans la base de données Hive sous la clé _languageCodeKey.
    _languageBox.put(_languageCodeKey, languageCode);
  }

  String? getLanguage() {
    return _languageBox.get(_languageCodeKey);
  }
}
