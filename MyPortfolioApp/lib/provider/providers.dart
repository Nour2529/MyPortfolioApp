import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/data/language_database.dart';

Future<ProviderContainer> initApp() async {
  if (kReleaseMode) { //kReleaseMode-vérifier si l'application est en mode de production  ou en mode de débogage
    debugPrint = (String? message, {int? wrapWidth}) {};
  }

  await Hive.initFlutter(); //Initialise Hive ( base de données NoSQL légère et rapide.)
  final languageDatabase = LanguageDatabase();
  await languageDatabase.init();


  return ProviderContainer(
    overrides: [
      languageDatabaseProvider.overrideWithValue(languageDatabase),
    ],
  );
}


final languageDatabaseProvider = Provider<LanguageDatabase>(
  (ref) => throw UnimplementedError(),
);

final appThemeProvider = StateProvider<bool>((ref) => false);//stocker le theme de l'application (light or dark)


