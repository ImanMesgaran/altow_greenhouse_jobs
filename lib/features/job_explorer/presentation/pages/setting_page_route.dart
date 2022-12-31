import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/core/global/text_styles.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/setting/language_widget.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/setting/theme_switch_widget.dart';
import 'package:flutter/material.dart';

class SettingsPageRoute extends StatelessWidget {
  const SettingsPageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      color: app_grey2_color,
      child: ListView(
        children: <Widget>[
          LanguageWidget(),
          // change app theme
          ThemeSwitchWidget(),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: app_white_color.withOpacity(0.1),
            ),
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Dec 2022',
              style: white__20__400,
            ),
          )
        ],
      ),
    );
  }
}
