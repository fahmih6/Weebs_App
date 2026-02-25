import 'package:flutter/foundation.dart';

class Endpoints {
  /// Base URL
  static String baseUrl = kIsWeb ? Uri.base.origin : "https://midorima.online";

  /// Anoboy
  static const String anoboy = "/api/anoboy/";

  /// Dorama
  static const String dorama = "/api/dorama/";
  static const String getDoramaDirectLink = "/api/dorama/get_video_link/";

  /// Komiku
  static const String komiku = "/api/komiku/";
  static const String komikuChapter = "/api/komiku/chapter/";

  /// Komikcast
  static const String komikcast = "/api/komikcast/";
  static const String komikcastChapter = "/api/komikcast/chapter/";

  /// Proxy
  ///
  /// Must be followed by valid link. e.g : `$imgProxy$imageUrl`.
  static String imgProxy = "$baseUrl/api/proxy/?url=";
  static String videoProxy =
      "https://video-proxy.midorima9877.workers.dev/?url=";
}
