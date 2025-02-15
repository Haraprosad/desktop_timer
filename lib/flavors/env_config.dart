import 'environment.dart';

class EnvConfig {
  // late final String baseUrl;
  late final Environment environment;

  EnvConfig._internal();
  static final EnvConfig instance = EnvConfig._internal();

  bool _lock = false;
  factory EnvConfig.instantiate({
    // required String baseUrl,
    required Environment environment,
  }) {
    if (instance._lock) return instance;

    // instance.baseUrl = baseUrl;
    instance.environment = environment;
    instance._lock = true;

    return instance;
  }
}
