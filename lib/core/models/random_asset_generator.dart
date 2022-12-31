import 'dart:math';

import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';

class RandomAssetGenerator {
  static final List<String> fakeArtWorks = [
    "assets/artworks/artwork_1.jpg",
    "assets/artworks/artwork_2.jpg",
    "assets/artworks/artwork_3.jpg",
    "assets/artworks/artwork_4.jpg",
    "assets/artworks/artwork_5.jpg",
    "assets/artworks/artwork_6.jpg",
    "assets/artworks/artwork_7.jpg",
    "assets/artworks/artwork_8.jpg",
    "assets/artworks/artwork_9.jpg",
    "assets/artworks/artwork_10.jpg",
  ];

  static final List<String> fakeLogos = [
    "assets/logo/coca_cola_logo.jpg",
    "assets/logo/amazon_logo.jpg",
    "assets/logo/apple_logo.jpg",
    "assets/logo/att_logo.jpg",
    "assets/logo/cisco_logo.jpg",
    "assets/logo/facebook_logo.jpg",
    "assets/logo/ge_logo.jpg",
    "assets/logo/google_logo.jpg",
    "assets/logo/intel_logo.jpg",
    "assets/logo/louis_vuitton_logo.jpg",
    "assets/logo/microsoft_logo.jpg",
    "assets/logo/nike_logo.jpg",
    "assets/logo/samsung_logo.jpg",
    "assets/logo/toyota_logo.jpg",
    "assets/logo/walt_disney_logo.jpg",
  ];

  static List<RandomAsset> AssetsArtwork = fakeArtWorks
      .map((e) => RandomAsset(
          name: e.split('/').last.replaceAll('_', ' ')[0].toUpperCase(),
          path: e))
      .toList();

  static List<RandomAsset> AssetsLogos = fakeLogos
      .map((e) => RandomAsset(
          name: e.split('/').last.replaceAll('_', ' ')[0].toUpperCase(),
          path: e))
      .toList();

  // generates a new Random object
  static final _random1 = new Random();
  static final _random2 = new Random();

  static RandomAsset getFakeArtwork() {
    // generate a random index based on the list length
    // and use it to retrieve the fake blurhash
    var element = AssetsArtwork[_random1.nextInt(AssetsArtwork.length)];

    return element;
  }

  static RandomAsset getFakeLogo() {
    // generate a random index based on the list length
    // and use it to retrieve the fake blurhash
    var element = AssetsLogos[_random2.nextInt(AssetsLogos.length)];

    return element;
  }
}
