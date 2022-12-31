import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/global_setting_provider/global_setting_provider.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LanguageWidget extends HookConsumerWidget {
  const LanguageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _language = ref.watch(globalSettingProvider).appLocalization;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
          child: Text(
            context.l10n.languageButtonText,
            style: TextStyle(
              color: app_white_color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: app_white_color.withOpacity(0.1),
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                context.l10n.englishText,
                style: TextStyle(color: app_white_color),
              ),
              Radio(
                value: LanguageEnum.English.index,
                groupValue: _language.index,
                onChanged: (int? value) {
                  AppLocalizations.delegate.load(Locale('en', 'US'));

                  ref.read(globalSettingProvider.notifier).changeAppLanguage(
                      localization: LanguageEnum
                          .values[value ?? LanguageEnum.English.index]);
                },
                activeColor: app_white_color,
              ),
            ],
          ),
        ),
        Divider(height: 1),
        Container(
          color: app_white_color.withOpacity(0.1),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                context.l10n.germanText,
                style: TextStyle(color: app_white_color),
              ),
              Radio(
                value: LanguageEnum.German.index,
                groupValue: _language.index,
                onChanged: (int? value) {
                  AppLocalizations.delegate.load(Locale('de', 'DE'));

                  ref.read(globalSettingProvider.notifier).changeAppLanguage(
                      localization: LanguageEnum
                          .values[value ?? LanguageEnum.German.index]);
                },
                activeColor: app_white_color,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
