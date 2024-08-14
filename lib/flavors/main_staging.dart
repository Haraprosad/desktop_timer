import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../core/constants/string_constants.dart';
import '../main.dart';
import 'env_config.dart';
import 'environment.dart';

void main() async{
  await dotenv.load(fileName: StringConstants.envStaging);

  EnvConfig.instantiate(
      // baseUrl: dotenv.env[StringConstants.envKeyBaseUrl]!,
      environment: Environment.STAGING
  );

  await runMainApp();
}
