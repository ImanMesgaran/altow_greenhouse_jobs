import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/chips/filter_chip.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/skeleton_widgets/skeleton_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomFilterChipList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _filterChips = ref.watch(jobBoardProvider).filters;
    final _areJobsLoaded = ref.read(jobBoardProvider).areJobsLoaded;

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (!_areJobsLoaded || _filterChips.isEmpty)
            return CustomFilterChipListSkeleton();
          else
            return CustomFilterChip(filterChipModel: _filterChips[index]);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 20);
        },
        itemCount: _filterChips.length > 0 ? _filterChips.length : 5,
      ),
    );
  }
}
