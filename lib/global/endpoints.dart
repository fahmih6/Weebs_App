class Endpoints {
  /// Base URL
  static const String baseUrl = "http://midorima.online:3000";

  /// Anoboy
  static const String anoboy = "/api/anoboy/";

  /// Dorama
  static const String dorama = "/api/dorama/";
  static const String getDoramaDirectLink = "/api/dorama/get_video_link/";

  /// Komiku
  static const String komiku = "/api/komiku/";
  static const String komikuChapter = "/api/komiku/chapter/";

  /// Proxy
  ///
  /// Must be followed by valid link. e.g : `$imgProxy$imageUrl`.
  static const String imgProxy = "$baseUrl/api/proxy/?url=";
}
