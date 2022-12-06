import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotEnvSingleton {
  /// DotEnv Singleton Value
  static final DotEnvSingleton shared = DotEnvSingleton._internal();

  /// Base URL
  String get baseUrl => dotenv.get("BASE_URL");

  /// Initialize
  factory DotEnvSingleton() {
    return shared;
  }

  DotEnvSingleton._internal();
}
