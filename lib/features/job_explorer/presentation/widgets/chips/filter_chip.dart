import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FilterChipModel {
  final String text;
  final bool isSelected;
  //final ValueSetter<bool> onSelected;

  FilterChipModel({
    required this.text,
    required this.isSelected,
    //required this.onSelected,
  });
}

class CustomFilterChip extends HookConsumerWidget {
  final FilterChipModel filterChipModel;

  CustomFilterChip({
    required this.filterChipModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilterChip(
      label: Text(filterChipModel.text),
      labelStyle: TextStyle(
          color:
              filterChipModel.isSelected ? app_white_color : app_black_color),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      backgroundColor:
          filterChipModel.isSelected ? app_blue_color : app_white_color,
      elevation: 2,
      onSelected: ((value) {
        ref
            .read(jobBoardProvider.notifier)
            .filterJobs(filterModel: filterChipModel);
      }),
    );
  }
}
