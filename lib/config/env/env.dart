import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

// ignore: avoid_classes_with_only_static_members
@Envied(path: '.env.dev')
abstract class DevEnv {
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static final String baseUrl = _DevEnv.baseUrl;
 
}

// ignore: avoid_classes_with_only_static_membersp
@Envied(path: '.env.prod')
abstract class ProdEnv {
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static final String baseUrl = _ProdEnv.baseUrl;

 
}

sealed class Environment {
  static String get baseUrl => kReleaseMode ? ProdEnv.baseUrl : DevEnv.baseUrl;
}
