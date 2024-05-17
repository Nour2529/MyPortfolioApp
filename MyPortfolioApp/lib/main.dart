import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/provider/providers.dart';
import 'package:personal_website/splash_screen.dart';
import 'personal_website_app.dart';

Future<void> main() async {
  runApp(SplashScreen());//splash

  await Future.delayed(Duration(seconds: 2));//duration du splash

  final container = await initApp(); //initialisatoon de la configuration

  runApp(
    ProviderScope(
      parent: container,
      child: const PersonalWebsiteApp(),
    ),
  );
}
