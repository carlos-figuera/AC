import 'package:app_hazconta/app/data/models/RequestToken.dart';
import 'package:app_hazconta/app/data/providers/local/local_auth.dart';
import 'package:get/get.dart';

class LocalAuthRepository {
  final LocalAuth _localAuth = Get.find<LocalAuth>();

  Future<void> setSession(RequestToken requestToken) => _localAuth.setSession(requestToken);
  Future<void> clearSession() => _localAuth.clearSession();
  Future<void> get session => _localAuth.getSession();
  Future<String?> get token => _localAuth.getToken();

}