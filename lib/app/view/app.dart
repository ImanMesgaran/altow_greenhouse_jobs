import 'package:altow_greenhouse_jobs/core/models/app_constants.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/pages/jobs_main_page_route.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/global_setting_provider/global_setting_provider.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppConstants().init();
    final _locale = ref.watch(globalSettingProvider).appLocale;
    final _theme = ref.watch(globalSettingProvider).appTheme;

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('de', 'DE'),
      ],
      locale: _locale,
      home: JobsMainPage(),
    );
  }
}
