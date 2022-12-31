import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchWidget extends HookConsumerWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();

    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width - 64,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 18),
            height: 55,
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              controller: searchController,
              style: TextStyle(
                color: app_grey_color,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
                hintText: context.l10n.searchBoxHintText,
                hintStyle: TextStyle(
                  color: Colors.grey[50],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onChanged: (value) {
                ref.read(jobBoardProvider.notifier).searchJobs(query: value);
              },
              onEditingComplete: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            )),
        SizedBox(height: 15),
      ],
    );
  }
}
