import 'dart:math';

// ! fake blurhash to use for placeholder until the remote results are loaded
class BlurHashFake {
  static const List<String> fakes = [
    "LEHV6nWB2yk8pyo0adR*.7kCMdnj",
    "LEG66nWB2yk8pyo0ddR*.7kC9dfj",
    "LEG96nWB2yk8pyo0ddR*.7kC9dfj",
    "LEHC6nWB2yk8pyo0adR*.7kCMdnj",
    "LKO2?V%2Tw=w]~RBVZRi};RPxuwH",
    "LKD2?V%2Tw=w]~RBVZRi};RPxuwH",
    "LKE2?V%2Tw=w]~RBVZRi};RPxuwH",
    "L6Pj41jE.AyE_3t7t7R**0o#DgR4",
    "LEHV6nWB2yk8pyo0adR*.7kCMdnj",
    "LEHB6nWB2yk8pyo0adR*.7kCMdnj",
  ];

  // generates a new Random object
  static final _random = new Random();

  static String getBlurHash() {
    // generate a random index based on the list length
    // and use it to retrieve the fake blurhash
    var element = fakes[_random.nextInt(fakes.length)];

    return element;
  }
}
