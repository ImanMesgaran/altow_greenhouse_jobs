part of 'global_setting_provider.dart';

enum LanguageEnum { English, German }

enum ThemeEnum { LightMode, DarkMode }

class GlobalSettingState extends Equatable {
  final LanguageEnum appLocalization;
  final Locale appLocale;
  final ThemeEnum appTheme;

  GlobalSettingState({
    required this.appLocalization,
    required this.appLocale,
    required this.appTheme,
  });

  factory GlobalSettingState.initial(
          {initialAppLocalizations = LanguageEnum.English}) =>
      GlobalSettingState(
        appLocalization: initialAppLocalizations,
        appLocale: Locale('en', 'US'),
        appTheme: ThemeEnum.LightMode,
      );

  factory GlobalSettingState.languageChanged({
    required GlobalSettingState prevState,
    required LanguageEnum newLocalization,
  }) =>
      GlobalSettingState(
        appLocalization: newLocalization,
        appLocale: newLocalization == LanguageEnum.English
            ? Locale('en', 'US')
            : Locale('de', 'DE'),
        appTheme: prevState.appTheme,
      );

  factory GlobalSettingState.themeChanged({
    required GlobalSettingState prevState,
    required ThemeEnum newTheme,
  }) =>
      GlobalSettingState(
        appLocalization: prevState.appLocalization,
        appLocale: prevState.appLocale,
        appTheme: newTheme,
      );

  GlobalSettingState copyWith({LanguageEnum? language}) {
    return GlobalSettingState(
      appLocalization: language ?? this.appLocalization,
      appLocale: this.appLocale,
      appTheme: this.appTheme,
    );
  }

  @override
  List<Object?> get props => [
        appLocalization,
        appLocale,
        appTheme,
      ];
}
