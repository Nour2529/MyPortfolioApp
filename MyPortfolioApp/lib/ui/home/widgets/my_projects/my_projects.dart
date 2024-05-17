import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_website/common/responsive/responsive.dart';
import 'package:personal_website/ui/home/widgets/my_projects/widgets/project_container.dart';
import 'package:personal_website/ui/widgets/animated_title_text.dart';
import 'package:personal_website/ui/home/widgets/my_projects/widgets/project_container.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = Screen.of(context);
    final localization = AppLocalizations.of(context)!;

    final isSmallScreen = screen.width <= kMinLargeTabletWidth;
    final isMediumScreen = screen.width <= kMinMediumDesktopWidth;
    Widget layout;

    if (isSmallScreen) {
      layout = const SmallScreenLayout();
    } else if (isMediumScreen) {
      layout = const MediumScreenLayout();
    } else {
      layout = const LargeScreenLayout();
    }

    return Padding(
      padding: screen.contentPadding,
      child: Column(
        children: [
          AnimatedTitleText(
            title: localization.projects,
          ),
          const SizedBox(height: 30),
          layout,
        ],
      ),
    );
  }
}

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ElectroShopProject(),
              ),
              SizedBox(width: 20),
              Expanded(
                child: BouticoProject(),
              )

            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyUniversityProject(),
              ),
              SizedBox(width: 20),
              Expanded(
                child: VEnchProject(),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyPortfolioProject(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MediumScreenLayout extends StatelessWidget {
  const MediumScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: ElectroShopProject(),
              ),
              Expanded(
                child: BouticoProject(),
              ),
              Expanded(
                child: MyUniversityProject(),
              ),
              Expanded(
                child: VEnchProject(),
              ),
              Expanded(
                child: MyPortfolioProject(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ElectroShopProject(),
        BouticoProject(),
        MyUniversityProject(),
        VEnchProject(),
        MyPortfolioProject(),
      ],
    );
  }
}

class ElectroShopProject extends StatelessWidget {
  const ElectroShopProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return ProjectContainer(
      icon: Icons.code,
      title: localization.electroShopProject,
      description: localization.electroShopProjectDescription,
    );
  }
}


class BouticoProject extends StatelessWidget {
  const BouticoProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return ProjectContainer(
      icon: Icons.code,
      title: localization.bouticoProject,
      description: localization.bouticoProjectDescription,
    );
  }
}

class MyUniversityProject extends StatelessWidget {
  const MyUniversityProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return ProjectContainer(
      icon: Icons.code,
      title: localization.myUniversityProject,
      description: localization.myUniversityProjectDescription,
    );
  }
}


class VEnchProject extends StatelessWidget {
  const VEnchProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return ProjectContainer(
      icon: Icons.code,
      title: localization.vEnchProject,
      description: localization.vEnchProjectDescription,
    );
  }
}


class MyPortfolioProject extends StatelessWidget {
  const MyPortfolioProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return ProjectContainer(
      icon: Icons.phone_android,
      title: localization.myPortfolioProject,
      description: localization.myPortfolioProjectDescription,
    );
  }
}

