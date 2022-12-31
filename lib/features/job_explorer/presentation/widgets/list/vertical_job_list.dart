import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/list/empty_search_list_tile.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/skeleton_widgets/skeleton_widgets.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/list/vertical_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerticalJobList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _jobs =
        (ref.watch(jobBoardProvider).jobs)?.where((j) => j.isVisible).toList();
    final _areJobsLoaded = ref.read(jobBoardProvider).areJobsLoaded;

    if (_areJobsLoaded && (_jobs?.length ?? 0) == 0)
      return EmptySearchListTile();

    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 0),
      itemCount: _jobs?.length ?? 10,
      itemBuilder: ((context, index) {
        if (_areJobsLoaded)
          return VerticalListItemWidget(
            jobModel: _jobs?[index],
            isFeaturedJob: false,
          );
        else
          return VerticalListItemSkeleton();
      }),
      separatorBuilder: (context, index) {
        return SizedBox(height: 5);
      },
    );
  }
}
