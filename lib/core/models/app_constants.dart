import 'package:altow_greenhouse_jobs/core/models/random_asset_generator.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';

class AppConstants {
  static final AppConstants _appConstants = AppConstants._internal();
  factory AppConstants() {
    return _appConstants;
  }
  AppConstants._internal();

  void init() {
    for (var i = 0; i < 20; i++) {
      customAssets.add(RandomAssetGenerator.getFakeArtwork());
    }
  }

  static const board_Token = "example";
  static const user_avatar_light_theme =
      'https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png';
  static const user_avatar_dark_theme =
      'https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png';

  final List<RandomAsset> customAssets = <RandomAsset>[];
}
