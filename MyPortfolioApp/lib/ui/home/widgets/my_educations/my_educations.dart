import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_website/common/responsive/responsive.dart';
import 'package:personal_website/ui/home/widgets/my_educations/widgets/education_container.dart';
import 'package:personal_website/ui/home/widgets/my_experiences/widgets/experience_container.dart';
import 'package:personal_website/ui/widgets/animated_title_text.dart';

class MyEducations extends StatelessWidget {
  const MyEducations({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = Screen.of(context);
    final localization = AppLocalizations.of(context)!;

    Widget layout;

    layout = const EducationLayout();


    return Padding(
      padding: screen.contentPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedTitleText(
            title:localization.educations ,//localization.projects
          ),
          const SizedBox(height: 30),
          layout,
        ],
      ),
    );
  }
}

class EducationLayout extends StatelessWidget {
  const EducationLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        EducationContainer(
            post:localization.educationPost1,
            institute:localization.educationInstitute1,
            duration: localization.educationDuration1),
        SizedBox(height: 10,),
        EducationContainer(
            post:localization.educationPost2,
            institute: localization.educationInstitute2,
            duration: localization.educationDuration2),

      ]
    );
  }
}

ListTile _buildExperienceRow(
    {required String company, String? position, String? duration}) {
  return ListTile(
    leading: const Padding(
      padding: EdgeInsets.only(top: 8.0, left: 20.0),
      child: Icon(
        Icons.circle,
        size: 12.0,
        color: Colors.black54,
      ),
    ),
    title: Text(
      company,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    subtitle: Text("$position ($duration)"),
  );
}