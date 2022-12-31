import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'global_setting_state.dart';

final globalSettingProvider =
    StateNotifierProvider<GlobalSettingProvider, GlobalSettingState>((ref) {
  return GlobalSettingProvider();
});

class GlobalSettingProvider extends StateNotifier<GlobalSettingState> {
  GlobalSettingProvider() : super(GlobalSettingState.initial());

  void changeAppLanguage({required LanguageEnum localization}) {
    state = GlobalSettingState.languageChanged(
        prevState: state, newLocalization: localization);
  }

  void changeAppTheme({required ThemeEnum theme}) {
    state = GlobalSettingState.themeChanged(prevState: state, newTheme: theme);
  }
}
