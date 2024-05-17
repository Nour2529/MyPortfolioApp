import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_website/common/responsive/responsive.dart';
import 'package:personal_website/ui/home/widgets/my_experiences/widgets/experience_container.dart';
import 'package:personal_website/ui/widgets/animated_title_text.dart';

class MyExperiences extends StatelessWidget {
  const MyExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = Screen.of(context);
    final localization = AppLocalizations.of(context)!;

    Widget layout;

    layout = const ExperienceLayout();//experiencelayout


    return Padding(
      padding: screen.contentPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedTitleText(
            title:localization.experiences ,
          ),
          const SizedBox(height: 30),
          layout,
        ],
      ),
    );
  }
}

class ExperienceLayout extends StatelessWidget {
  const ExperienceLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        ExperienceContainer(//experiencecontainer
            experienceName:localization.experience1Name,
            experienceDescription: localization.experience1Description,
            experienceDuration: localization.experience1Duration,
            company: localization.experience1company)
      ]
    );
  }
}