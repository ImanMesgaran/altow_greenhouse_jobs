import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';
import 'package:flutter/material.dart';

class MessagesPageRoute extends StatelessWidget {
  const MessagesPageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
        color: app_grey2_color,
        child: Center(child: Text(context.l10n.noWidgetText)));
  }
}
