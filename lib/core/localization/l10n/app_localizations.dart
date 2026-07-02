import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'GymApp'**
  String get appTitle;

  /// No description provided for @testLabel.
  ///
  /// In en, this message translates to:
  /// **'Test'**
  String get testLabel;

  /// No description provided for @flutterDemoTitle.
  ///
  /// In en, this message translates to:
  /// **'Flutter Demo'**
  String get flutterDemoTitle;

  /// No description provided for @flutterDemoHomePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Flutter Demo Home Page'**
  String get flutterDemoHomePageTitle;

  /// No description provided for @incrementClicked.
  ///
  /// In en, this message translates to:
  /// **'click increment!!'**
  String get incrementClicked;

  /// No description provided for @navigationItemHomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navigationItemHomeTitle;

  /// No description provided for @navigationItemHelpTitle.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get navigationItemHelpTitle;

  /// No description provided for @incrementClickTitleFeedBack.
  ///
  /// In en, this message translates to:
  /// **'You have pushed the button this many times:'**
  String get incrementClickTitleFeedBack;

  /// No description provided for @incrementFabTooltip.
  ///
  /// In en, this message translates to:
  /// **'Increment'**
  String get incrementFabTooltip;

  /// No description provided for @highPronadePulldownTrainingA.
  ///
  /// In en, this message translates to:
  /// **'High Pronade Pulldown - Training A'**
  String get highPronadePulldownTrainingA;

  /// No description provided for @highPronadePulldown.
  ///
  /// In en, this message translates to:
  /// **'High Pronade Pulldown'**
  String get highPronadePulldown;

  /// No description provided for @holdTheBarAndPull.
  ///
  /// In en, this message translates to:
  /// **'Hold the bar and pull.'**
  String get holdTheBarAndPull;

  /// No description provided for @trainingA.
  ///
  /// In en, this message translates to:
  /// **'Training A'**
  String get trainingA;

  /// No description provided for @putPictureKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Insert photo...'**
  String get putPictureKeyLabel;

  /// No description provided for @deletePictureKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Remove photo...'**
  String get deletePictureKeyLabel;

  /// No description provided for @howToDoKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'How do I do?'**
  String get howToDoKeyLabel;

  /// No description provided for @howAmIFeelingKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'How am I feeling?'**
  String get howAmIFeelingKeyLabel;

  /// No description provided for @formEmailKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get formEmailKeyLabel;

  /// No description provided for @formPasswordKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get formPasswordKeyLabel;

  /// No description provided for @formConfirmPasswordKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get formConfirmPasswordKeyLabel;

  /// No description provided for @formNameKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get formNameKeyLabel;

  /// No description provided for @formSignupKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Sign-up'**
  String get formSignupKeyLabel;

  /// No description provided for @formLoggInKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get formLoggInKeyLabel;

  /// No description provided for @formDontHaveAccountKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Don\'t you have an account, sign-up clicking here.'**
  String get formDontHaveAccountKeyLabel;

  /// No description provided for @formAlreadyHaveAccountKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Already have an account, click here to logg-in.'**
  String get formAlreadyHaveAccountKeyLabel;

  /// No description provided for @emailCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'The Email cannot be empty.'**
  String get emailCannotBeEmpty;

  /// No description provided for @emailIsTooShort.
  ///
  /// In en, this message translates to:
  /// **'The Email is too short'**
  String get emailIsTooShort;

  /// No description provided for @emailIsInvalid.
  ///
  /// In en, this message translates to:
  /// **'The email is invalid'**
  String get emailIsInvalid;

  /// No description provided for @passwordIsShort.
  ///
  /// In en, this message translates to:
  /// **'The password is too short (min. 9 characters).'**
  String get passwordIsShort;

  /// No description provided for @passwordMustContainUppercaseCharacter.
  ///
  /// In en, this message translates to:
  /// **'The Password must contain uppercase character(s).'**
  String get passwordMustContainUppercaseCharacter;

  /// No description provided for @passwordMustContainLowercaseCharacter.
  ///
  /// In en, this message translates to:
  /// **'The Password must contain lowercase character(s).'**
  String get passwordMustContainLowercaseCharacter;

  /// No description provided for @passwordMustContainNumber.
  ///
  /// In en, this message translates to:
  /// **'The Password must contain number(s)'**
  String get passwordMustContainNumber;

  /// No description provided for @passwordMustContainSpecialCharacter.
  ///
  /// In en, this message translates to:
  /// **'The Password must contains special character(s)'**
  String get passwordMustContainSpecialCharacter;

  /// No description provided for @nameCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'The name cannot be empty.'**
  String get nameCannotBeEmpty;

  /// No description provided for @nameIsTooShort.
  ///
  /// In en, this message translates to:
  /// **'The name is too short (min. 5 characters).'**
  String get nameIsTooShort;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
