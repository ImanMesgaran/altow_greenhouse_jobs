import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/core/global/text_styles.dart';
import 'package:altow_greenhouse_jobs/core/models/blurhash_fakes.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:marquee/marquee.dart';
import 'package:octo_image/octo_image.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';

class VerticalListItemWidget extends HookConsumerWidget {
  final bool isFeaturedJob;
  final JobModel? jobModel;

  VerticalListItemWidget({required this.jobModel, this.isFeaturedJob = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateFormat dateFormatter = DateFormat.yMMMMd('en_US');
    final _dateTime = dateFormatter.format(jobModel!.updatedAt!);
    final _jobContents =
        "${_dateTime} - ${jobModel?.departments?[0].name ?? ""} - ${jobModel?.metaData?[0].value ?? ""}";
    final htmlData = jobModel?.content ?? "";

    return GestureDetector(
      onTap: () async {
        // await showModalBottomSheet(
        //   context: context,
        //   builder: (context) {
        //     return Container(
        //       child: Html(),
        //     );
        //   },
        // );
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 218, 218, 218)),
          borderRadius: BorderRadius.circular(8),
          color: app_white_color,
        ),
        padding: EdgeInsets.only(top: 8, right: 8, left: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: OctoImage(
                      height: 40,
                      width: 40,
                      image:
                          Image.asset(jobModel?.randomAsset?.path ?? "").image,
                      placeholderBuilder: OctoPlaceholder.blurHash(
                        BlurHashFake.getBlurHash(),
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobModel?.title ?? "",
                    style: black__16__500,
                  ),
                  SizedBox(
                    height: 15,
                    child: Marquee(
                      text:
                          '${jobModel?.requisitionId ?? ""} - ${jobModel?.location?.name ?? ""}',
                      style: grey2__14__600,
                      scrollAxis: Axis.horizontal,
                      blankSpace: 20,
                      velocity: 20,
                      pauseAfterRound: Duration(seconds: 1),
                      startPadding: 10,
                      accelerationDuration: Duration(seconds: 1),
                      accelerationCurve: Curves.linear,
                      decelerationDuration: Duration(milliseconds: 500),
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    height: 15,
                    child: Marquee(
                      text: _jobContents,
                      style: grey2__14__600,
                      scrollAxis: Axis.horizontal,
                      blankSpace: 20,
                      velocity: 20,
                      pauseAfterRound: Duration(seconds: 1),
                      startPadding: 10,
                      accelerationDuration: Duration(seconds: 1),
                      accelerationCurve: Curves.linear,
                      decelerationDuration: Duration(milliseconds: 500),
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              flex: 4,
              child: isFeaturedJob
                  ? Text('fetured or buttons')
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () async {
                            await ref
                                .read(jobBoardProvider.notifier)
                                .addJobToFavorite(job: jobModel!);
                          },
                          icon: Icon(
                            (jobModel?.isFavorite ?? false)
                                ? Icons.favorite
                                : Icons.favorite_border,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              context.l10n.applyButtonText,
                              style: blue__14__700,
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
