import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/core/global/text_styles.dart';
import 'package:altow_greenhouse_jobs/core/models/app_constants.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/job_board_provider/job_board_provider.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/chips/filter_chip_list.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/list/horizontal_job_list.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/search_box_widget.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/list/vertical_job_list.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:octo_image/octo_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MainPageRoute extends StatefulHookConsumerWidget {
  MainPageRoute({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MainPageState();
}

class MainPageState extends ConsumerState {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(jobBoardProvider.notifier).loadJobs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: app_white_color,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: app_black_color,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 32, left: 32, top: 58, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.sort_rounded,
                      size: 28,
                      color: app_white_color,
                    ),
                    Text(
                      context.l10n.appBarTitle,
                      style: yellow__20__700,
                    ),
                    OctoImage.fromSet(
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                      image: CachedNetworkImageProvider(
                        AppConstants.user_avatar_light_theme,
                      ),
                      octoSet: OctoSet.circleAvatar(
                        backgroundColor: app_red_color,
                        text: Text("I.M"),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () {
                      // ref.invalidate(jobBoardProvider);
                      /// get list of recent jobs from the API
                      return ref.read(jobBoardProvider.notifier).loadJobs();
                    },
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 20,
                            ),
                            child: Text(
                              context.l10n.findYourDreamJobText,
                              style: white__26__500,
                            ),
                          ),
                          SearchWidget(),
                          SizedBox(height: 12),
                          Text(
                            context.l10n.bestPicksText,
                            style: grey2__16__500,
                          ),
                          SizedBox(height: 12),
                          HorizontalJobList(),
                          SizedBox(height: 20),
                          CustomFilterChipList(),
                          SizedBox(height: 15),
                          VerticalJobList(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
