// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.dev.g.dart';

@Envied(path: '.env.dev')
final class Env {
  @EnviedField(varName: 'BASE_URL')
  static const String baseUrl = _Env.baseUrl;
}
