import 'package:altow_greenhouse_jobs/core/models/app_constants.dart';
import 'package:altow_greenhouse_jobs/core/models/blurhash_fakes.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:octo_image/octo_image.dart';

import '../skeleton_widgets/skeleton_widgets.dart';

class HorizontalJobList extends HookConsumerWidget {
  const HorizontalJobList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _areJobsLoaded = ref.watch(jobBoardProvider).areJobsLoaded;

    return SizedBox(
      height: 140,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          separatorBuilder: (context, index) {
            return SizedBox(width: 22);
          },
          itemBuilder: ((context, index) {
            if (_areJobsLoaded)
              return Container(
                height: 130,
                width: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: OctoImage(
                    height: 40,
                    width: 40,
                    image: Image.asset(AppConstants().customAssets[index].path)
                        .image,
                    placeholderBuilder: OctoPlaceholder.blurHash(
                      BlurHashFake.getBlurHash(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            else
              return BestPicksSkeleton();
          })),
    );
  }
}
