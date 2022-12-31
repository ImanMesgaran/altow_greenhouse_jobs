import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/global_setting_provider/global_setting_provider.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeSwitchWidget extends HookConsumerWidget {
  const ThemeSwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// if the value is false, the app theme is LightMode, otherwise it's DarkMode
    final _currentTheme =
        (ref.watch(globalSettingProvider).appTheme) == ThemeEnum.DarkMode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
          child: Text(
            context.l10n.themeText,
            style: TextStyle(
              color: app_white_color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: app_white_color.withOpacity(0.1),
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                context.l10n.lightThemeText,
                style: TextStyle(color: app_white_color),
              ),
              CupertinoSwitch(
                value: _currentTheme,
                onChanged: (value) {
                  ref.read(globalSettingProvider.notifier).changeAppTheme(
                      theme: value ? ThemeEnum.DarkMode : ThemeEnum.LightMode);
                },
              ),
              Text(
                context.l10n.darkThemeText,
                style: TextStyle(color: app_white_color),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
