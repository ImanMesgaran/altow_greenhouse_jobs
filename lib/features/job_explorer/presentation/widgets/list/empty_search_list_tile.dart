import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/core/models/blurhash_fakes.dart';
import 'package:altow_greenhouse_jobs/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class EmptySearchListTile extends StatelessWidget {
  const EmptySearchListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 218, 218, 218)),
        borderRadius: BorderRadius.circular(8),
        color: app_white_color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OctoImage(
            height: 80,
            width: MediaQuery.of(context).size.width,
            image: Image.asset('assets/icons/no_result.png').image,
            placeholderBuilder: OctoPlaceholder.blurHash(
              BlurHashFake.getBlurHash(),
            ),
            fit: BoxFit.contain,
          ),
          SizedBox(height: 12),
          Text(context.l10n.noSearchResultText)
        ],
      ),
    );
  }
}
