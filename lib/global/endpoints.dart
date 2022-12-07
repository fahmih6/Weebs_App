import '../helpers/singletons/dotenv_singletons.dart';

class Endpoints {
  /// Base URL
  static final String baseUrl = DotEnvSingleton.shared.baseUrl;

  /// Anoboy
  static const String anoboyV1 = "/api/anoboy/";
  static const String anoboyV2 = "/api/v2/anoboy/";

  /// Dorama
  static const String dorama = "/api/dorama/";
  static const String getDoramaDirectLink = "/api/dorama/get_video_link/";

  /// Komiku
  static const String komiku = "/api/komiku/";
}
