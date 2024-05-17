import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/widgets/sliver_app_bar/widgets/change_language_menu_button.dart';
import 'package:personal_website/ui/home/widgets/sliver_app_bar/widgets/custom_navigation_bar.dart';
import 'package:personal_website/ui/home/widgets/sliver_app_bar/widgets/theme_switcher.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ChangeLanguageMenuButton(),//bouton de language
              ),
              ThemeSwitcher()//theme switcher
            ],
          ),

          Expanded(
            child: FractionallySizedBox(
              heightFactor: 0.8,
              child: CustomNavigationBar(// list des menus
                direction: Axis.vertical,
                onChange: (_) {
                  Scaffold.of(context).closeEndDrawer();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
