import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/provider/providers.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(appThemeProvider);



    return Switch(
      value: isDarkMode, // Set the value of the switch based on the current theme mode
      activeColor: Colors.blue,
      onChanged: (value) {
        ref.read(appThemeProvider.notifier).state = value;
      },
    );
  }
}

// Use the ThemeSwitcher widget wherever you want to display the switcher in your app
