import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_website/ui/home/widgets/my_skills/widgets/skills_section.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return SkillsSection(
      title: localization.skills,
      description: localization.skillsDescription,
      child: const Wrap(
        alignment: WrapAlignment.start,
        children: [
          SkillLabel(label: 'Dart'),
          SkillLabel(label: 'Flutter'),
          SkillLabel(label: 'Java'),
          SkillLabel(label: 'Python'),
          SkillLabel(label: 'PHP 5'),
          SkillLabel(label: 'JavaScript'),
          SkillLabel(label: 'TypeScript'),
          SkillLabel(label: 'HTML5'),
          SkillLabel(label: 'CSS3'),
          SkillLabel(label: 'Bootstrap'),
          SkillLabel(label: 'Angular'),
          SkillLabel(label: 'Laravel'),
          SkillLabel(label: 'Django'),
          SkillLabel(label: 'Git,Github'),
          SkillLabel(label: 'MYSQL'),
          SkillLabel(label: 'SQL ORACLE'),
          SkillLabel(label: 'Arduino, Raspberry pi'),
          SkillLabel(label: 'Design Patterns'),


        ],
      ),
    );
  }
}

class SkillLabel extends StatelessWidget {
  const SkillLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      constraints: const BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.secondary,
        ),
        color: Colors.lightBlue.shade50,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: theme.textTheme.titleMedium!.copyWith(
          color: theme.colorScheme.secondaryContainer,
        ),
      ),
    );
  }
}
