import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'I am a skilled student in computer science and web and mobile programming. I am also interested in IoT. Moreover, I always accept new challenges.'**
  String get aboutDescription;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutMe;

  /// No description provided for @aboutMeTitle.
  ///
  /// In en, this message translates to:
  /// **'Hello, I\'m Feki Nour'**
  String get aboutMeTitle;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @contactAddress.
  ///
  /// In en, this message translates to:
  /// **'Sfax, Tunisia'**
  String get contactAddress;

  /// No description provided for @contactComment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get contactComment;

  /// No description provided for @contactCommentHint.
  ///
  /// In en, this message translates to:
  /// **'Type a comment'**
  String get contactCommentHint;

  /// No description provided for @contactDescription.
  ///
  /// In en, this message translates to:
  /// **'I am open to your suggestions and eager to receive your feedback.'**
  String get contactDescription;

  /// No description provided for @contactEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get contactEmail;

  /// No description provided for @contactEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get contactEmailHint;

  /// No description provided for @contactEmptyFormError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your {label}.'**
  String contactEmptyFormError(Object label);

  /// No description provided for @contactInfoDescription.
  ///
  /// In en, this message translates to:
  /// **'You can access my contact information on this page. Additionally, links to my social media profiles are available at the top of the page to allow you to contact me on these platforms if you wish.'**
  String get contactInfoDescription;

  /// No description provided for @contactInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact and Social Media'**
  String get contactInfoTitle;

  /// No description provided for @contactInvalidEmailFormError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get contactInvalidEmailFormError;

  /// No description provided for @contactMeButton.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get contactMeButton;

  /// No description provided for @contactName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get contactName;

  /// No description provided for @contactNameHint.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get contactNameHint;

  /// No description provided for @contactSendEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contactSendEmailTitle;

  /// No description provided for @contactSendMessageFailureTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to send message, please try again.'**
  String get contactSendMessageFailureTitle;

  /// No description provided for @contactSendMessageSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Message sent successfully.'**
  String get contactSendMessageSuccessTitle;

  /// No description provided for @contactSubject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get contactSubject;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Get in Touch'**
  String get contactTitle;

  /// No description provided for @desktopDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Desktop Development'**
  String get desktopDevelopment;

  /// No description provided for @desktopDevelopmentDescription.
  ///
  /// In en, this message translates to:
  /// **'As a desktop developer, I create feature-rich applications that work on various operating systems. Whether it\'s standalone or enterprise software, I design and build applications to meet your specific needs.'**
  String get desktopDevelopmentDescription;

  /// No description provided for @downloadResume.
  ///
  /// In en, this message translates to:
  /// **'Download Resume'**
  String get downloadResume;

  /// No description provided for @hireMe.
  ///
  /// In en, this message translates to:
  /// **'Hire Me'**
  String get hireMe;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @homeJobTitle.
  ///
  /// In en, this message translates to:
  /// **'Student in Software Engineering and Business Intelligence'**
  String get homeJobTitle;

  /// No description provided for @homeWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome, I\'m'**
  String get homeWelcome;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Student in Software Engineering and Business Intelligence'**
  String get jobTitle;

  /// No description provided for @languageNameEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageNameEnglish;

  /// No description provided for @languageNamePersian.
  ///
  /// In en, this message translates to:
  /// **'Persian'**
  String get languageNamePersian;

  /// No description provided for @languageNameFrench.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get languageNameFrench;

  /// No description provided for @languageNameArab.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get languageNameArab;

  /// No description provided for @languageNameGermany.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get languageNameGermany;

  /// No description provided for @languageSkills.
  ///
  /// In en, this message translates to:
  /// **'Language Skills'**
  String get languageSkills;

  /// No description provided for @languageSkillsDescription.
  ///
  /// In en, this message translates to:
  /// **'One of my passions is studying and learning languages. I strive to be able to learn and use my favorite languages.'**
  String get languageSkillsDescription;

  /// No description provided for @mobileDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Mobile Development'**
  String get mobileDevelopment;

  /// No description provided for @mobileDevelopmentDescription.
  ///
  /// In en, this message translates to:
  /// **'With expertise in mobile development, I can create user-friendly applications for iOS and Android. Whether native or cross-platform, I develop applications optimized for performance, security, and scalability.'**
  String get mobileDevelopmentDescription;

  /// No description provided for @myName.
  ///
  /// In en, this message translates to:
  /// **'Feki Nour'**
  String get myName;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'My projects'**
  String get projects;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @skillsDescription.
  ///
  /// In en, this message translates to:
  /// **'I am passionate about computer science and new technologies, and I have acquired strong skills through my education.'**
  String get skillsDescription;

  /// No description provided for @electroShopProject.
  ///
  /// In en, this message translates to:
  /// **'Electro shop'**
  String get electroShopProject;

  /// No description provided for @electroShopProjectDescription.
  ///
  /// In en, this message translates to:
  /// **'Design and implementation of a dynamic website, an e-commerce website for selling computer equipment. \nKeywords: HTML - CSS - Bootstrap - JavaScript - PHP'**
  String get electroShopProjectDescription;

  /// No description provided for @bouticoProject.
  ///
  /// In en, this message translates to:
  /// **'Boutico'**
  String get bouticoProject;

  /// No description provided for @bouticoProjectDescription.
  ///
  /// In en, this message translates to:
  /// **'Design and implementation of a dynamic website, an e-commerce website for selling clothes. \nKeywords: Laravel - Vue.js - Bootstrap'**
  String get bouticoProjectDescription;

  /// No description provided for @myUniversityProject.
  ///
  /// In en, this message translates to:
  /// **'MyUniversity'**
  String get myUniversityProject;

  /// No description provided for @myUniversityProjectDescription.
  ///
  /// In en, this message translates to:
  /// **'Design and implementation of a dynamic website for student management, including integration of Firebase for authentication. \nKeywords: Angular - Firebase - Angular Material.'**
  String get myUniversityProjectDescription;

  /// No description provided for @vEnchProject.
  ///
  /// In en, this message translates to:
  /// **'VEnch'**
  String get vEnchProject;

  /// No description provided for @vEnchProjectDescription.
  ///
  /// In en, this message translates to:
  /// **'Design of an online platform for real estate auctions. \nKeywords: HTML - CSS - Bootstrap - JavaScript - PHP.'**
  String get vEnchProjectDescription;

  /// No description provided for @myPortfolioProject.
  ///
  /// In en, this message translates to:
  /// **'MyPortfolio'**
  String get myPortfolioProject;

  /// No description provided for @myPortfolioProjectDescription.
  ///
  /// In en, this message translates to:
  /// **'Development of a mobile application for my resume. \nKeywords: Flutter - Dart - l10n.'**
  String get myPortfolioProjectDescription;

  /// No description provided for @experiences.
  ///
  /// In en, this message translates to:
  /// **'My experiences'**
  String get experiences;

  /// No description provided for @experience1Name.
  ///
  /// In en, this message translates to:
  /// **'Summer Internship'**
  String get experience1Name;

  /// No description provided for @experience1Description.
  ///
  /// In en, this message translates to:
  /// **'Development and integration of a donation detection application for children using Angular and Django. \nKeywords: Angular - Django - Bootstrap'**
  String get experience1Description;

  /// No description provided for @experience1Duration.
  ///
  /// In en, this message translates to:
  /// **'June 2023 - August 2023'**
  String get experience1Duration;

  /// No description provided for @experience1company.
  ///
  /// In en, this message translates to:
  /// **'Djagora'**
  String get experience1company;

  /// No description provided for @educations.
  ///
  /// In en, this message translates to:
  /// **'My educations'**
  String get educations;

  /// No description provided for @educationPost1.
  ///
  /// In en, this message translates to:
  /// **'2nd year Computer Engineering'**
  String get educationPost1;

  /// No description provided for @educationInstitute1.
  ///
  /// In en, this message translates to:
  /// **'International Institute of Technology, IIT'**
  String get educationInstitute1;

  /// No description provided for @educationDuration1.
  ///
  /// In en, this message translates to:
  /// **'2022 - Present'**
  String get educationDuration1;

  /// No description provided for @educationPost2.
  ///
  /// In en, this message translates to:
  /// **'Physics and Chemistry Department'**
  String get educationPost2;

  /// No description provided for @educationInstitute2.
  ///
  /// In en, this message translates to:
  /// **'Preparatory Institute for Engineering Studies of Sfax, IPEIS'**
  String get educationInstitute2;

  /// No description provided for @educationDuration2.
  ///
  /// In en, this message translates to:
  /// **'2020 – 2022'**
  String get educationDuration2;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
