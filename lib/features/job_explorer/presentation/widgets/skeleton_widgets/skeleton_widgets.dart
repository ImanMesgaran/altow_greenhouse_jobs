import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomFilterChipListSkeleton extends StatelessWidget {
  const CustomFilterChipListSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: app_white_color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class VerticalListItemSkeleton extends StatelessWidget {
  const VerticalListItemSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Shimmer.fromColors(
                    child: Container(
                      height: 40,
                      width: 40,
                      color: app_white_color,
                    ),
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
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
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 15,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: app_blue_grey_color,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 12,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: app_blue_grey_color,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 12,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: app_blue_grey_color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: app_blue_grey_color,
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 12,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: app_blue_grey_color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BestPicksSkeleton extends StatelessWidget {
  const BestPicksSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.blueGrey[300]!,
      child: Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: app_blue_grey_color,
        ),
      ),
    );
  }
}
